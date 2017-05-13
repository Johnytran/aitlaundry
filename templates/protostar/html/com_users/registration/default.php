<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_users
 *
 * @copyright   Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

JHtml::_('behavior.keepalive');
JHtml::_('behavior.formvalidator');
?>
<div class="registration<?php echo $this->pageclass_sfx?>">
	<?php if ($this->params->get('show_page_heading')) : ?>
		<div id="abouttitle" class="container-fluid">
                <h1>Get Started</h1>
            </div>
	<?php endif; ?>
<style>
    #member-registration{
        max-width: 1278px;
        margin: 0 auto;
        border-radius: 0px;
        
    }
    #member-registration .control-group{
        display: flex;
        flex-direction: column;
        align-items: flex-start;
        margin-top: 10px;
    }
    
    #member-registration .controls{
        width: 100%;
    }
    
    #member-registration .control-label{
        margin-left: 18%;
    }
    #member-registration .validate-email{
        display: block;
        width: 100%;
        padding: 12px 20px;
    }
    #member-registration input{
        max-width: 800px;
        margin: 0 auto;  
        
    }
    #member-registration .btn-primary{
        background-color: #faa634;
        border: 2px solid black;
    }
    #member-registration .btn-primary,
    .btn-primary:hover,
    .btn-primary:link,
    .btn-primary:visited,
    .btn-primary:active,
    .btn-primary:focus {
        background-color: #faa634;
        border: 2px solid black;
        color: black;
        width: 250px;
    }
    
    .btn-primary:active:hover,
    .btn-primary.active:hover,
    .open > .dropdown-toggle.btn-primary:hover,
    .btn-primary:active:focus,
    .btn-primary.active:focus,
    .open > .dropdown-toggle.btn-primary:focus,
    .btn-primary:active.focus,
    .btn-primary.active.focus,
    .open > .dropdown-toggle.btn-primary.focus{
        background-color: #faa634;
        border: 2px solid black;
        color: black;
        width: 250px;
    }
    

    #jform_email1-lbl, #jform_email2-lbl{
        margin-bottom: 10px;
    }
    
    .controls a:focus, 
    .controls a:hover {
        color: black;
        background-color: #faa634;       
    }
    
    .controls a{
        color: black;
        border: 2px solid black;
        background-color: white;
        width: 250px;
    }
    
    @media screen and (max-width: 400px) {
        #member-registration .control-label{
            margin-left: 1px;
        }
        #member-registration .btn{
            margin-top: 10px;
        }
    }


</style>
	<form id="member-registration" action="<?php echo JRoute::_('index.php?option=com_users&task=registration.register'); ?>" method="post" class="form-validate form-horizontal well" enctype="multipart/form-data">
		<?php // Iterate through the form fieldsets and display each one. ?>
		<?php foreach ($this->form->getFieldsets() as $fieldset): ?>
			<?php $fields = $this->form->getFieldset($fieldset->name);?>
			<?php if (count($fields)):?>
				<fieldset>
				
				<?php // Iterate through the fields in the set and display them. ?>
				<?php foreach ($fields as $field) : ?>
					<?php // If the field is hidden, just display the input. ?>
					<?php if ($field->hidden): ?>
						<?php echo $field->input;?>
					<?php else:?>
						<div class="control-group">
							<div class="control-label">
							<?php echo $field->label; ?>
							<?php if (!$field->required && $field->type != 'Spacer') : ?>
								<span class="optional"><?php //echo JText::_('COM_USERS_OPTIONAL');?></span>
							<?php endif; ?>
							</div>
							<div class="controls">
								<?php echo $field->input;?>
							</div>
						</div>
					<?php endif;?>
				<?php endforeach;?>
				</fieldset>
			<?php endif;?>
		<?php endforeach;?>
		<div class="control-group">
			<div class="controls">
				<button type="submit" class="btn btn-primary validate"><?php echo JText::_('JREGISTER');?></button>
				<a class="btn" href="<?php echo JRoute::_('');?>" title="<?php echo JText::_('JCANCEL');?>"><?php echo JText::_('JCANCEL');?></a>
				<input type="hidden" name="option" value="com_users" />
				<input type="hidden" name="task" value="registration.register" />
			</div>
		</div>
		<?php echo JHtml::_('form.token');?>
	</form>
</div>
