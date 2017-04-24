<?php
/**
 * @version    CVS: 1.0.0
 * @package    Com_Payment
 * @author     AIT Laundry <aitlaundry@gmail.com>
 * @copyright  2017 AIT Laundry
 * @license    GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access
defined('_JEXEC') or die;

jimport('joomla.application.component.controllerform');

/**
 * Payment controller class.
 *
 * @since  1.6
 */
class PaymentControllerPayment extends JControllerForm
{
	/**
	 * Constructor
	 *
	 * @throws Exception
	 */
	public function __construct()
	{
		$this->view_list = 'payments';
		parent::__construct();
	}
}
