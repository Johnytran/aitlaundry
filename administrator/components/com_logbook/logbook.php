<?php
/**
 * @version    CVS: 1.0.0
 * @package    Com_Logbook
 * @author     AIT Laundry <aitlaundry@gmail.com>
 * @copyright  2017 AIT Laundry
 * @license    GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access
defined('_JEXEC') or die;

// Access check.
if (!JFactory::getUser()->authorise('core.manage', 'com_logbook'))
{
	throw new Exception(JText::_('JERROR_ALERTNOAUTHOR'));
}

// Include dependancies
jimport('joomla.application.component.controller');

JLoader::registerPrefix('Logbook', JPATH_COMPONENT_ADMINISTRATOR);

$controller = JControllerLegacy::getInstance('Logbook');
$controller->execute(JFactory::getApplication()->input->get('task'));
$controller->redirect();
