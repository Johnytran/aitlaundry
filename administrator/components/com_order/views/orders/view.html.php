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

jimport('joomla.application.component.view');

/**
 * View class for a list of Order.
 *
 * @since  1.6
 */
class OrderViewOrders extends JViewLegacy
{
	protected $items;

	protected $pagination;

	protected $state;

	/**
	 * Display the view
	 *
	 * @param   string  $tpl  Template name
	 *
	 * @return void
	 *
	 * @throws Exception
	 */
	public function display($tpl = null)
	{
		$this->state = $this->get('State');
		$this->items = $this->get('Items');
		$this->pagination = $this->get('Pagination');

		// Check for errors.
		if (count($errors = $this->get('Errors')))
		{
			throw new Exception(implode("\n", $errors));
		}

		OrderHelpersOrder::addSubmenu('orders');

		$this->addToolbar();

		JHtmlSidebar::addEntry(
            'Order LogBook',
            'index.php?option=com_orderlogbook&view=orderlogbooks', 'orderlogbooks'
        );
		
		$this->sidebar = JHtmlSidebar::render();
		
		parent::display($tpl);
	}

	/**
	 * Add the page title and toolbar.
	 *
	 * @return void
	 *
	 * @since    1.6
	 */
	protected function addToolbar()
	{
		$state = $this->get('State');
		$canDo = OrderHelpersOrder::getActions();

		JToolBarHelper::title(JText::_('COM_ORDER_TITLE_ORDERS'), 'orders.png');

		// Check if the form exists before showing the add/edit buttons
		$formPath = JPATH_COMPONENT_ADMINISTRATOR . '/views/order';

		if (file_exists($formPath))
		{
			if ($canDo->get('core.create'))
			{
				JToolBarHelper::addNew('order.add', 'JTOOLBAR_NEW');

				if (isset($this->items[0]))
				{
					JToolbarHelper::custom('orders.duplicate', 'copy.png', 'copy_f2.png', 'JTOOLBAR_DUPLICATE', true);
				}
			}

			if ($canDo->get('core.edit') && isset($this->items[0]))
			{
				JToolBarHelper::editList('order.edit', 'JTOOLBAR_EDIT');
			}
		}

		if ($canDo->get('core.edit.state'))
		{
			if (isset($this->items[0]->state))
			{
				JToolBarHelper::divider();
				JToolBarHelper::custom('orders.publish', 'publish.png', 'publish_f2.png', 'JTOOLBAR_PUBLISH', true);
				JToolBarHelper::custom('orders.unpublish', 'unpublish.png', 'unpublish_f2.png', 'JTOOLBAR_UNPUBLISH', true);
			}
			elseif (isset($this->items[0]))
			{
				// If this component does not use state then show a direct delete button as we can not trash
				JToolBarHelper::deleteList('', 'orders.delete', 'JTOOLBAR_DELETE');
			}

			if (isset($this->items[0]->state))
			{
				JToolBarHelper::divider();
				JToolBarHelper::archiveList('orders.archive', 'JTOOLBAR_ARCHIVE');
			}

			if (isset($this->items[0]->checked_out))
			{
				JToolBarHelper::custom('orders.checkin', 'checkin.png', 'checkin_f2.png', 'JTOOLBAR_CHECKIN', true);
			}
		}

		// Show trash and delete for components that uses the state field
		if (isset($this->items[0]->state))
		{
			if ($state->get('filter.state') == -2 && $canDo->get('core.delete'))
			{
				JToolBarHelper::deleteList('', 'orders.delete', 'JTOOLBAR_EMPTY_TRASH');
				JToolBarHelper::divider();
			}
			elseif ($canDo->get('core.edit.state'))
			{
				JToolBarHelper::trash('orders.trash', 'JTOOLBAR_TRASH');
				JToolBarHelper::divider();
			}
		}

		if ($canDo->get('core.admin'))
		{
			JToolBarHelper::preferences('com_order');
		}

		// Set sidebar action - New in 3.0
		JHtmlSidebar::setAction('index.php?option=com_order&view=orders');

		$this->extra_sidebar = '';
	}

	/**
	 * Method to order fields 
	 *
	 * @return void 
	 */
	protected function getSortFields()
	{
		return array(
			'a.`id`' => JText::_('JGRID_HEADING_ID'),
			'a.`ordernote`' => JText::_('COM_ORDER_ORDERS_ORDERNOTE'),
			'a.`comboid`' => JText::_('COM_ORDER_ORDERS_COMBOID'),
			'a.`paymentid`' => JText::_('COM_ORDER_ORDERS_PAYMENTID'),
			'a.`datetimecreated`' => JText::_('COM_ORDER_ORDERS_DATETIMECREATED'),
			'a.`addresspickup`' => JText::_('COM_ORDER_ORDERS_ADDRESSPICKUP'),
			'a.`date_timepickup`' => JText::_('COM_ORDER_ORDERS_DATE_TIMEPICKUP'),
			'a.`addressdelivery`' => JText::_('COM_ORDER_ORDERS_ADDRESSDELIVERY'),
			'a.`date_timedelivery`' => JText::_('COM_ORDER_ORDERS_DATE_TIMEDELIVERY'),
			'a.`deliverynote`' => JText::_('COM_ORDER_ORDERS_DELIVERYNOTE'),
			'a.`status`' => JText::_('COM_ORDER_ORDERS_STATUS'),
			'a.`ordering`' => JText::_('JGRID_HEADING_ORDERING'),
			'a.`userid`' => JText::_('COM_ORDER_ORDERS_USERID'),
			'a.`created_by`' => JText::_('COM_ORDER_ORDERS_CREATED_BY'),
			'a.`modified_by`' => JText::_('COM_ORDER_ORDERS_MODIFIED_BY'),
		);
	}
}
