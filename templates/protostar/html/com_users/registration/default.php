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
    <div id="abouttitle" class="container-fluid">
        <h1>Get Started</h1>
    </div>
<div class="gettingStarted">
    <form class="form-horizontal row" id="member-registration" action="<?php echo JRoute::_('index.php?option=com_users&task=registration.register'); ?>" method="post" class="form-validate form-horizontal well" enctype="multipart/form-data">
                        
                    <div class="column span1-2">
                        <div class="form-group">
                            <label for="firstName" class="col-sm-4 control-label"><span class="spacer"><span class="before"></span><span class="text"><label id="jform_spacer-lbl" class=""><strong class="red">*</strong> Required field</label></span><span class="after"></span></span></label>
                            <div class="col-sm-8">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="firstName" class="col-sm-4 control-label"><label id="jform_firstName-lbl" for="jform_firstName" class="hasPopover required invalid" title="" data-content="first name" data-original-title="First name">
                            First name<span class="star">&nbsp;*</span></label>
                            </label>
                            <div class="col-sm-8">
                                 <input type="text" name="jform[firstName]" id="jform_firstName" value="" class="form-control required invalid" size="30" required="required" aria-required="true" aria-invalid="true">                                
                            </div>
                        </div>
                         <input type="hidden" name="jform[name]" value="test"/>                                
                        <div class="form-group">
                            <label for="lastName" class="col-sm-4 control-label">
                                <label id="jform_lastName-lbl" for="jform_lastName" class="hasPopover required" title="" data-content="last name" data-original-title="Last name">	Last name<span class="star">&nbsp;*</span>
                                </label>
                            </label>
                                <div class="col-sm-8">
                                <input type="text" name="jform[lastName]" id="jform_lastName" value="" class="required" size="30" required="required" aria-required="true">     </div>
                        </div>
                        <input type="hidden" name="name" value="user"/>
                        <!-- <div class="form-group">
                                <label for="address" class="col-sm-4 control-label">
                                    <label id="jform_address-lbl" for="jform_address" class="hasTooltip" title="" data-original-title="<strong>Address</strong>">
	                                   Address
                                    </label>
                                </label>
                                <div class="col-sm-8">
                                    <input type="text" name="jform[address]" id="jform_address" value="" size="230">                                
                                </div>
                            </div> -->
                        <div class="form-group">
                                <label for="username" class="col-sm-4 control-label">
                                    <label id="jform_username-lbl" for="jform_username" class="hasPopover required" title="" data-content="Enter your desired username." data-original-title="Username">Username<span class="star">&nbsp;*</span>
                                    </label>
                                </label>
                                <div class="col-sm-8">
                                    <input type="text" name="jform[username]" id="jform_username" value="" class="validate-username required" size="30" required="required" aria-required="true">                                
                                </div>
                        </div>
                        <div class="form-group">
                            <label for="password1" class="col-sm-4 control-label">
                                <label id="jform_password1-lbl" for="jform_password1" class="hasPopover required" title="" data-content="Enter your desired password." data-original-title="Password">Password<span class="star">&nbsp;*</span>
                                </label>
                            </label>
                                <div class="col-sm-8">
                                    <input type="password" name="jform[password1]" id="jform_password1" value="" autocomplete="off" class="validate-password required" size="30" maxlength="99" required="required" aria-required="true">                                
                                </div>
                        </div>
                        <div class="form-group">
                            <label for="password2" class="col-sm-4 control-label">
                                <label id="jform_password2-lbl" for="jform_password2" class="hasPopover required" title="" data-content="Confirm your password." data-original-title="Confirm Password">Confirm Password<span class="star">&nbsp;*</span>
                                </label>
                            </label>
                                <div class="col-sm-8">
                                    <input type="password" name="jform[password2]" id="jform_password2" value="" autocomplete="off" class="validate-password required" size="30" maxlength="99" required="required" aria-required="true">                                
                                </div>
                        </div>
                        </div>
                        <div class="column span1-2">
                            <br>
                            <br>
                            <div class="form-group">
                                <label for="email1" class="col-sm-4 control-label">
                                    <label id="jform_email1-lbl" for="jform_email1" class="hasPopover required" title="" data-content="Enter your email address." data-original-title="Email Address">Email Address<span class="star">&nbsp;*</span>
                                    </label>
                                </label>
                                <div class="col-sm-8">
                                    <input type="email" name="jform[email1]" class="validate-email required" id="jform_email1" value="" size="30" autocomplete="email" required="required" aria-required="true">                                
                                </div>
                            </div>
	                       <div class="form-group">
                                <label for="email2" class="col-sm-4 control-label">
                                    <label id="jform_email2-lbl" for="jform_email2" class="hasPopover required" title="" data-content="Confirm your email address." data-original-title="Confirm email Address">Confirm email Address<span class="star">&nbsp;*</span>
                                    </label>
                               </label>
                                <div class="col-sm-8">
                                    <input type="email" name="jform[email2]" class="validate-email required" id="jform_email2" value="" size="30" required="required" aria-required="true">                                
                               </div>
                            </div>
				            <div class="form-group">
                                <label for="mobilePhone" class="col-sm-4 control-label">
                                    <label id="jform_mobilePhone-lbl" for="jform_mobilePhone" class="hasTooltip" title="" data-original-title="<strong>Mobile phone</strong>">
	                                   Mobile phone
                                    </label>
                                </label>
                                <div class="col-sm-8">
                                    <input type="text" name="jform[mobilePhone]" id="jform_mobilePhone" value="" size="30">                                
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="homePhone" class="col-sm-4 control-label">
                                    <label id="jform_homePhone-lbl" for="jform_homePhone" class="hasTooltip" title="" data-original-title="<strong>Home phone</strong>">
	                                   Home phone
                                    </label>
                                </label>
                                <div class="col-sm-8">
                                    <input type="text" name="jform[homePhone]" id="jform_homePhone" value="" size="30">                                
                                </div>
                            </div>
							
                        <div class="form-group">
                            <label class="hasPopover required">By registering you agree to <a href="index.php/terms-conditions" target="_blank">the terms and conditions</a> 
                                </label>
                            <div class="col-sm-offset-4 col-sm-8">
                                <button type="submit" class="btn btn-default btnStyle validate">Register</button>
                                    <a class="btn btn-default btnStyleCancel" href="/aitlaundry/aitlaundry/" title="Cancel">Cancel</a>
                                    <input type="hidden" name="option" value="com_users">
                                    <input type="hidden" name="task" value="registration.register">
                            </div>
                        </div>
                        </div>
        <?php echo JHtml::_('form.token');?>
        </form>
</div>