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


?>

<div class="item_fields">

	<table class="table">
		

		<tr>
			<th><?php echo JText::_('COM_COMBOS_FORM_LBL_COMBO_NAME'); ?></th>
			<td><?php echo $this->item->name; ?></td>
		</tr>

		<tr>
			<th><?php echo JText::_('COM_COMBOS_FORM_LBL_COMBO_DESCRIPTION'); ?></th>
			<td><?php echo nl2br($this->item->description); ?></td>
		</tr>

	</table>

</div>

