<?php
/**
 * @version    CVS: 1.0.0
 * @package    Com_Card
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
			<th><?php echo JText::_('COM_CARD_FORM_LBL_CARD_CARDNUMBER'); ?></th>
			<td><?php echo $this->item->cardnumber; ?></td>
		</tr>

		<tr>
			<th><?php echo JText::_('COM_CARD_FORM_LBL_CARD_TYPE'); ?></th>
			<td><?php echo $this->item->type; ?></td>
		</tr>

		<tr>
			<th><?php echo JText::_('COM_CARD_FORM_LBL_CARD_BANK'); ?></th>
			<td><?php echo $this->item->bank; ?></td>
		</tr>

		<tr>
			<th><?php echo JText::_('COM_CARD_FORM_LBL_CARD_CARDHOLDER'); ?></th>
			<td><?php echo $this->item->cardholder; ?></td>
		</tr>

		<tr>
			<th><?php echo JText::_('COM_CARD_FORM_LBL_CARD_EXPIRYDATE'); ?></th>
			<td><?php echo $this->item->expirydate; ?></td>
		</tr>

		<tr>
			<th><?php echo JText::_('COM_CARD_FORM_LBL_CARD_SECRECTNUMBER'); ?></th>
			<td><?php echo $this->item->secrectnumber; ?></td>
		</tr>

	</table>

</div>

