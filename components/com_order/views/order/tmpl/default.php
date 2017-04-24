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


?>

<div class="item_fields">

	<table class="table">
		

		<tr>
			<th><?php echo JText::_('COM_ORDER_FORM_LBL_ORDER_ORDERNOTE'); ?></th>
			<td><?php echo nl2br($this->item->ordernote); ?></td>
		</tr>

		<tr>
			<th><?php echo JText::_('COM_ORDER_FORM_LBL_ORDER_COMBOID'); ?></th>
			<td><?php echo $this->item->comboid; ?></td>
		</tr>

		<tr>
			<th><?php echo JText::_('COM_ORDER_FORM_LBL_ORDER_PAYMENTID'); ?></th>
			<td><?php echo $this->item->paymentid; ?></td>
		</tr>

		<tr>
			<th><?php echo JText::_('COM_ORDER_FORM_LBL_ORDER_DATETIMECREATED'); ?></th>
			<td><?php echo $this->item->datetimecreated; ?></td>
		</tr>

		<tr>
			<th><?php echo JText::_('COM_ORDER_FORM_LBL_ORDER_ADDRESSPICKUP'); ?></th>
			<td><?php echo $this->item->addresspickup; ?></td>
		</tr>

		<tr>
			<th><?php echo JText::_('COM_ORDER_FORM_LBL_ORDER_DATE_TIMEPICKUP'); ?></th>
			<td><?php echo $this->item->date_timepickup; ?></td>
		</tr>

		<tr>
			<th><?php echo JText::_('COM_ORDER_FORM_LBL_ORDER_ADDRESSDELIVERY'); ?></th>
			<td><?php echo $this->item->addressdelivery; ?></td>
		</tr>

		<tr>
			<th><?php echo JText::_('COM_ORDER_FORM_LBL_ORDER_DATE_TIMEDELIVERY'); ?></th>
			<td><?php echo $this->item->date_timedelivery; ?></td>
		</tr>

		<tr>
			<th><?php echo JText::_('COM_ORDER_FORM_LBL_ORDER_DELIVERYNOTE'); ?></th>
			<td><?php echo nl2br($this->item->deliverynote); ?></td>
		</tr>

		<tr>
			<th><?php echo JText::_('COM_ORDER_FORM_LBL_ORDER_USERID'); ?></th>
			<td><?php echo $this->item->userid; ?></td>
		</tr>

	</table>

</div>

