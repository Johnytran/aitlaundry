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


?>

<div class="item_fields">

	<table class="table">
		

		<tr>
			<th><?php echo JText::_('COM_LOGBOOK_FORM_LBL_LOGBOOK_NOTE'); ?></th>
			<td><?php echo nl2br($this->item->note); ?></td>
		</tr>

		<tr>
			<th><?php echo JText::_('COM_LOGBOOK_FORM_LBL_LOGBOOK_STATUS'); ?></th>
			<td><?php echo $this->item->status; ?></td>
		</tr>

		<tr>
			<th><?php echo JText::_('COM_LOGBOOK_FORM_LBL_LOGBOOK_DATETIMEMODIFY'); ?></th>
			<td><?php echo $this->item->datetimemodify; ?></td>
		</tr>

	</table>

</div>

