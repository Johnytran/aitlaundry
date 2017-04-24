<?php
/**
 * @version    CVS: 1.0.0
 * @package    Com_Combos
 * @author     AIT Laundry <aitlaundry@gmail.com>
 * @copyright  2017 AIT Laundry
 * @license    GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access
defined('_JEXEC') or die;

jimport('joomla.application.component.controllerform');

/**
 * Combo controller class.
 *
 * @since  1.6
 */
class CombosControllerCombo extends JControllerForm
{
	/**
	 * Constructor
	 *
	 * @throws Exception
	 */
	public function __construct()
	{
		$this->view_list = 'combos';
		parent::__construct();
	}
}
