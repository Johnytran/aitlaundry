<?php

/**
 * @version    CVS: 1.0.0
 * @package    Com_Order
 * @author     AIT Laundry <aitlaundry@gmail.com>
 * @copyright  2017 AIT Laundry
 * @license    GNU General Public License version 2 or later; see LICENSE.txt
 */
// No direct access
defined('_JEXEC') or die;

/**
 * Order controller class.
 *
 * @since  1.6
 */
class OrderControllerOrder extends JControllerLegacy
{
	/**
	 * Method to check out an item for editing and redirect to the edit form.
	 *
	 * @return void
	 *
	 * @since    1.6
	 */

	public function confirm(){
		$post = JRequest::get('post');
		//print_r($post);die;

		$session = JFactory::getSession();
		$session->set('order',$post);
		return $this->setRedirect('index.php?option=com_order&view=orders');
	}
	public function cancelorder(){
		return $this->setRedirect('index.php?option=com_order&view=orders&layout=cancel');
	}
	public function checkout(){
		$post = JRequest::get('post');
		//print_r($post);die;
		$user = JFactory::getUser();

		$session = JFactory::getSession();
		$session->set('order',$post);
		$cart = $session->get('yourcart');
		$db = JFactory::getDBO();

		$query = "INSERT INTO #__order(`status`, `comboid`,`paymentid`, `datetimecreated`,`addresspickup`,`date_timepickup`, `addressdelivery`, `date_timedelivery`, `deliverynote`, `created_by`)";
		
		$comboid = 0;
		$comboName = '';
		$price = 0;
		foreach($cart as $key=>$value){
			$comboid = $value['id'];
			$comboName = $value['name'];
			$price = $value['price'];
		}
		$query.= " VALUES(
				'0',
				'".$comboid."',
				'1', 
				'".date("Y-m-d h:i:s")."', 
				".$db->quote($post['addresspickup']).", 
				".$db->quote(JHTML::Date($post['date_timepickup'],'Y-m-d H:i:s')).", 
				".$db->quote($post['addressdeliver']).",  
				".$db->quote(JHTML::Date($post['date_timedelivery'],'Y-m-d H:i:s')).", 
				".$db->quote($post['deliverynote']).",
				".$user->id."
				)";
		// echo $query;
		//  die;
		$db->setQuery($query);
		$result  = $db->query();
		$orderid = $db->insertid();
		// die;
		if($result){
			$notify_url = JURI::root()."index.php?option=com_order&task=paypal.ipn_complete&orderid=".$orderid."&tmp_id=0";
	        
	        define ('PAYPAL_VERIFIED_ONLY', '0');
	        define ('PAYPAL_VERIFIED_STATUS', 'C');
	        define ('PAYPAL_PENDING_STATUS', 'P');
	        define ('PAYPAL_INVALID_STATUS', 'X');
	        
	        
	        $post_variables = Array(
	        "cmd" => "_ext-enter",
	        "redirect_cmd" => "_xclick",
	        "upload" => "1",
	        "business" => 'aitlaundry@gmail.com',
        	"receiver_email" =>'aitlaundry@gmail.com',
	        "item_name" => $db->quote($comboName),
	        "custom"=> $orderid,
	        "amount" => $price,
	        "currency_code" => 'AUD',
	        "address_override" => "1",
	        "image_url" => JURI::root()."/images/logo_impress.png",
	    

	        "return" =>JURI::root()."index.php?option=com_order&view=orders&layout=confirmation&orderid=".$orderid,
	        "notify_url" => $notify_url,
	        "cancel_return" =>JURI::root()."index.php?option=com_order&task=order.cancelorder&orderid=".$orderid,
	        "undefined_quantity" => "0",

	        "test_ipn" => 1,
	        "pal" => "NRUBJXESJTY24",
	        "no_shipping" => "1",
	        "no_note" => "1"
	        );
	        $query_string = "?";
	        foreach( $post_variables as $name => $value ) 
	        {
	            $query_string .= $name. "=" . urlencode($value) ."&";
	        }
	        $session->set('yourcart','');
	        $session->set('order','');
	        return $this->setRedirect('https://www.sandbox.paypal.com/cgi-bin/webscr'.$query_string);
		}else{
			return $this->setRedirect('index.php?option=com_order&view=orders', 'Error in saving data.');
		}
	    exit;	
		
	}
	public function edit()
	{
		die('dfas');
		$app = JFactory::getApplication();

		// Get the previous edit id (if any) and the current edit id.
		$previousId = (int) $app->getUserState('com_order.edit.order.id');
		$editId     = $app->input->getInt('id', 0);

		// Set the user id for the user to edit in the session.
		$app->setUserState('com_order.edit.order.id', $editId);

		// Get the model.
		$model = $this->getModel('Order', 'OrderModel');

		// Check out the item
		if ($editId)
		{
			$model->checkout($editId);
		}

		// Check in the previous user.
		if ($previousId && $previousId !== $editId)
		{
			$model->checkin($previousId);
		}

		// Redirect to the edit screen.
		$this->setRedirect(JRoute::_('index.php?option=com_order&view=orderform&layout=edit', false));
	}

	/**
	 * Method to save a user's profile data.
	 *
	 * @return    void
	 *
	 * @throws Exception
	 * @since    1.6
	 */
	public function publish()
	{
		// Initialise variables.
		$app = JFactory::getApplication();

		// Checking if the user can remove object
		$user = JFactory::getUser();

		if ($user->authorise('core.edit', 'com_order') || $user->authorise('core.edit.state', 'com_order'))
		{
			$model = $this->getModel('Order', 'OrderModel');

			// Get the user data.
			$id    = $app->input->getInt('id');
			$state = $app->input->getInt('state');

			// Attempt to save the data.
			$return = $model->publish($id, $state);

			// Check for errors.
			if ($return === false)
			{
				$this->setMessage(JText::sprintf('Save failed: %s', $model->getError()), 'warning');
			}

			// Clear the profile id from the session.
			$app->setUserState('com_order.edit.order.id', null);

			// Flush the data from the session.
			$app->setUserState('com_order.edit.order.data', null);

			// Redirect to the list screen.
			$this->setMessage(JText::_('COM_ORDER_ITEM_SAVED_SUCCESSFULLY'));
			$menu = JFactory::getApplication()->getMenu();
			$item = $menu->getActive();

			if (!$item)
			{
				// If there isn't any menu item active, redirect to list view
				$this->setRedirect(JRoute::_('index.php?option=com_order&view=orders', false));
			}
			else
			{
				$this->setRedirect(JRoute::_($item->link . $menuitemid, false));
			}
		}
		else
		{
			throw new Exception(500);
		}
	}

	/**
	 * Remove data
	 *
	 * @return void
	 *
	 * @throws Exception
	 */
	public function remove()
	{
		// Initialise variables.
		$app = JFactory::getApplication();

		// Checking if the user can remove object
		$user = JFactory::getUser();

		if ($user->authorise('core.delete', 'com_order'))
		{
			$model = $this->getModel('Order', 'OrderModel');

			// Get the user data.
			$id = $app->input->getInt('id', 0);

			// Attempt to save the data.
			$return = $model->delete($id);

			// Check for errors.
			if ($return === false)
			{
				$this->setMessage(JText::sprintf('Delete failed', $model->getError()), 'warning');
			}
			else
			{
				// Check in the profile.
				if ($return)
				{
					$model->checkin($return);
				}

                $app->setUserState('com_order.edit.inventory.id', null);
                $app->setUserState('com_order.edit.inventory.data', null);

                $app->enqueueMessage(JText::_('COM_ORDER_ITEM_DELETED_SUCCESSFULLY'), 'success');
                $app->redirect(JRoute::_('index.php?option=com_order&view=orders', false));
			}

			// Redirect to the list screen.
			$menu = JFactory::getApplication()->getMenu();
			$item = $menu->getActive();
			$this->setRedirect(JRoute::_($item->link, false));
		}
		else
		{
			throw new Exception(500);
		}
	}
}
