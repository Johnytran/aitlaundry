<?php
/**
 * @version    CVS: 1.0.0
 * @package    Com_Location
 * @author     AIT Laundry <aitlaundry@gmail.com>
 * @copyright  2017 AIT Laundry
 * @license    GNU General Public License version 2 or later; see LICENSE.txt
 */
// No direct access
defined('_JEXEC') or die;


?>

<div class="item_fields">

	<table class="table">
		

		<tr>
			<th><?php echo JText::_('COM_LOCATION_FORM_LBL_LOCATION_POSTCODE'); ?></th>
			<td><?php echo $this->item->postcode; ?></td>
		</tr>

		<tr>
			<th><?php echo JText::_('COM_LOCATION_FORM_LBL_LOCATION_SUBURBNAME'); ?></th>
			<td><?php echo $this->item->suburbname; ?></td>
		</tr>

		<tr>
			<th><?php echo JText::_('COM_LOCATION_FORM_LBL_LOCATION_LATITUDE'); ?></th>
			<td><?php echo $this->item->latitude; ?></td>
		</tr>

		<tr>
			<th><?php echo JText::_('COM_LOCATION_FORM_LBL_LOCATION_LONGITUDE'); ?></th>
			<td><?php echo $this->item->longitude; ?></td>
		</tr>

		<tr>
			<th><?php echo JText::_('COM_LOCATION_FORM_LBL_LOCATION_STATE'); ?></th>
			<td>
			<i class="icon-<?php echo ($this->item->state == 1) ? 'publish' : 'unpublish'; ?>"></i></td>
		</tr>

	</table>

</div>

