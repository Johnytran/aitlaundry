<?php
/**
 * @version    CVS: 1.0.0
 * @package    Com_Logbook
 * @author     AIT Laundry <aitlaundry@gmail.com>
 * @copyright  2017 AIT Laundry
 * @license    GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

// Include dependancies
jimport('joomla.application.component.controller');

JLoader::registerPrefix('Logbook', JPATH_COMPONENT);
JLoader::register('LogbookController', JPATH_COMPONENT . '/controller.php');


// Execute the task.
$controller = JControllerLegacy::getInstance('Logbook');
$controller->execute(JFactory::getApplication()->input->get('task'));
$controller->redirect();
