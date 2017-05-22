<?php
/**
 * @version    CVS: 1.0.0
 * @package    Com_Combos
 * @author     AIT Laundry <aitlaundry@gmail.com>
 * @copyright  2017 AIT Laundry
 * @license    GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access.
defined('_JEXEC') or die;
require_once(JPATH_COMPONENT .'/cart.class.php');

/**
 * Combos list controller class.
 *
 * @since  1.6
 */
class CombosControllerCombos extends CombosController
{
	/**
	 * Proxy for getModel.
	 *
	 * @param   string  $name    The model name. Optional.
	 * @param   string  $prefix  The class prefix. Optional
	 * @param   array   $config  Configuration array for model. Optional
	 *
	 * @return object	The model
	 *
	 * @since	1.6
	 */
	
	public function &getModel($name = 'Combos', $prefix = 'CombosModel', $config = array())
	{
		$model = parent::getModel($name, $prefix, array('ignore_request' => true));

		return $model;
	}
	public function deleteProduct(){
		$session = JFactory::getSession();
		$session->set('yourcart', '');
		$user = JFactory::getUser();
		return $this->setRedirect('index.php?option=com_users&view=profile&layout=edit&user_id='.$user->id.'&tab=2', 'The combo has been deleted');
	}
	public function changeProduct(){
		$user = JFactory::getUser();
		$id = JRequest::getvar('id');
		$session = JFactory::getSession();

		$db = JFactory::getDBO();
		$query = 'SELECT * FROM #__combos_combo where id ='.$id;
        $db->setQuery($query);
        $row= $db->loadAssoc();

        $query = 'SELECT sum(price) as total FROM #__services where comboid ='.$id;
        $db->setQuery($query);
        $total= $db->loadResult();

        $newcart['id'] = $row['id'];
        $newcart['name'] = $row['name'];
        $newcart['price'] = $total;
		$rand_id = substr(md5(time().rand(1,5)),0,6);
		$mcart[$rand_id] = $newcart;

		$session->set('yourcart', $mcart);
		//$cart = $session->get('yourcart');
		
		return $this->setRedirect('index.php?option=com_users&view=profile&layout=edit&user_id='.$user->id.'&tab=2', 'The combo has been updated');
	}
	public function addCart(){
		$combos_id = JRequest::getVar('id');
		if($combos_id){
			$user = JFactory::getUser();
			
			$cart = new Cart($combos_id, 1);
			$itemsSession = $cart->getCart();
			//print_r(count($itemsSession));die;
			
			
			if($user->id)
				//return $this->setRedirect('index.php?option=com_users&view=profile&layout=edit&user_id='.$user->id.'&tab=2', 'The combos is added to cart');
				if(count($itemsSession)<1){
					$cart->addProduct();
					echo 1; 
				}else{
					//return $this->setRedirect('index.php?option=com_users&view=profile&layout=edit&user_id='.$user->id.'&tab=2', 'Please complete checkout firstly before purchase other combos.');
					echo 2;
				}
			else
				//return $this->setRedirect('index.php?option=com_users&view=login&tab=2', 'Cart is added please login to process your cart.');
				echo 3;
		}else{
			//return $this->setRedirect('index.php', 'The chosen product has got error, please try more.');
			echo 4;
		}
		exit();
	}
}
