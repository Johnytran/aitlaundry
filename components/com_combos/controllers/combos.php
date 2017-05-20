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

	public function addCart(){
		$combos_id = JRequest::getVar('id');
		if($combos_id){
			$user = JFactory::getUser();
			require_once(JPATH_COMPONENT .'/cart.class.php');
			$cart = new Cart($combos_id, 1);
			$cart->addProduct(); 
			//print_r($cart->getCart());die;
			if($user->id)
				return $this->setRedirect('index.php?option=com_users&view=profile&layout=edit&user_id='.$user->id.'&tab=2', 'The combos is added to cart');
			else
				return $this->setRedirect('index.php?option=com_users&view=login&tab=2', 'Cart is added please login to process your cart.');
		}else{
			return $this->setRedirect('index.php', 'The chosen product has got error, please try more.');
		}
		
	}
}
