<?php
/**
 * @version    CVS: 1.0.0
 * @package    Com_Orderlogbook
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
			<th><?php echo JText::_('COM_ORDERLOGBOOK_FORM_LBL_ORDERLOGBOOK_ORDERID'); ?></th>
			<td><?php echo $this->item->orderid; ?></td>
		</tr>

		<tr>
			<th><?php echo JText::_('COM_ORDERLOGBOOK_FORM_LBL_ORDERLOGBOOK_USERID'); ?></th>
			<td><?php echo $this->item->userid; ?></td>
		</tr>

	</table>

</div>

