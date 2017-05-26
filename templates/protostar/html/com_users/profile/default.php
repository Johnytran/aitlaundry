
<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_users
 *
 * @copyright   Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
require_once(JPATH_SITE .'/components/com_combos/cart.class.php');
$tab= JRequest::getVar('tab',1);
$session = JFactory::getSession();
$cart = $session->get('yourcart');
$user = JFactory::getUser();
?>
<style>
    .close{
           position: relative;
            top: -20px;
            color: #000;
            font-size: 80px;
            font-weight: bold;
    }
    #cboxContent{
        border: 2px solid #faa634;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    }
    .cbomessage{
        padding: 50px;
        padding-bottom: 10px;
    }
    .cbomessage p{
        font-size: 20px;
        text-align: center;
    }
</style>
<script>
	jQuery(document).ready(function(){
		jQuery('a.deleteProduct').click(function(){
			
			var comboID = jQuery(this).attr('value');
			
			 
			jQuery.colorbox({width: 380, height: 440, html:"<div class='cbomessage'><p>Are you sure that you want to delete your combo?</p><p><span class='first'><a class='btnStyle btn-default btn' href='index.php?option=com_combos&task=combos.deleteProduct'>Delete</a><span class='last'><a class='btnStyleCancel btn-default btn' href='index.php?option=com_users&view=profile&layout=edit&user_id=<?php echo $user->id;?>&tab=2'>Cancel</a></span></p></div>"});

		});
	});
</script>
<div id="abouttitle" class="container-fluid">
                <h1>My Account</h1>
            </div>
			<div class="tab">
				<div>
					<button class="tablinks" onclick="openAccount(event, 'Personal')" <?php echo ($tab==1)?'id="defaultOpen"':'';?>>Personal Info</button>
				</div>
				<div>				
					<button class="tablinks" onclick="openAccount(event, 'Combo')" <?php echo ($tab==2)?'id="defaultOpen"':'';?>>Combo And Services</button>
				</div>	
				<div>				
					<button class="tablinks" onclick="openAccount(event, 'PaymentHistory')" <?php echo ($tab==3)?'id="defaultOpen"':'';?>>Payment History</button>
				</div>	
			</div>
			<div id="Personal" class="tabcontent">
				<div id="personalTable">
                    <form class="form-horizontal row" action="index.php?option=com_users&task=profile.update" method="post">
                    <div class="column span1-2">
                            <div class="form-group">
                            <label for="firstName" class="col-sm-4 control-label">First Name:</label>
                            <div class="col-sm-8">
                                <input class="form-control" disabled="disabled" name="firstName" value="<?php echo $this->data->firstName;?>" id="firstName" placeholder="First Name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="lastName" class="col-sm-4 control-label">Last Name:</label>
                            <div class="col-sm-8">
                                <input class="form-control" disabled="disabled" name="lastName" value="<?php echo $this->data->lastName;?>" id="lastName" placeholder="Last Name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="emailInput" class="col-sm-4 control-label">Email:</label>
                            <div class="col-sm-8">
                                <input class="form-control" disabled="disabled" name="email" value="<?php echo $this->data->email;?>" id="emailInput" placeholder="Email">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="mobilePhone" class="col-sm-4 control-label">Mobile Phone:</label>
                            <div class="col-sm-8">
                                <input class="form-control" disabled="disabled" value="<?php echo $this->data->mobilePhone;?>" name="mobilePhone" value="<?php echo $this->data->mobilePhone;?>" id="mobilePhone" placeholder="Mobile Phone">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="homePhone" class="col-sm-4 control-label">Home Phone:</label>
                            <div class="col-sm-8">
                                <input class="form-control" name="homePhone" disabled="disabled" id="homePhone" value="<?php echo $this->data->homePhone;?>" placeholder="Home Phone">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword" class="col-sm-4 control-label">Password:</label>
                            <div class="col-sm-8">
                                <input type="password" name="password" disabled="disabled" class="form-control" id="inputPassword" placeholder="Password">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword" class="col-sm-4 control-label">Confirm Password</label>
                            <div class="col-sm-8">
                                <input type="password" disabled="disabled" name="password2" class="form-control" id="inputPassword" placeholder="Password">
                            </div>
                        </div>
                        </div>
                        <div class="column span1-2">
                            <div class="form-group">
                            <label for="streetAddress" class="col-sm-4 control-label">Address:</label>
                            <div class="col-sm-8">
                                <input class="form-control" disabled="disabled" name="streetAddress" value="<?php echo $this->data->address;?>" value="<?php echo $this->data->address;?>" id="streetAddress" placeholder="Street Address">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <div class="col-sm-offset-4 col-sm-8">
                                <a class="btn btn-default btnStyle" href="<?php echo JRoute::_('index.php?option=com_users&task=profile.edit&user_id=' . (int) $this->data->id);?>">Edit</a>
                            </div>
                        </div>
                        </div>
                    </form>
				</div>
			</div>

			<div id="Combo" class="tabcontent">
				<h3>Combo's and services</h3>
				<?php 
				if(count($cart)){?>
					<div class="row">
					  <div class="col-sm-4">Order Code</div>
					  <div class="col-sm-4">Combos</div>
					  <div class="col-sm-4">Quantity</div>
					  <div class="col-sm-4">Price</div>
					</div>
					<?php
					//print_r($cart);
					foreach($cart as $key=>$value){?>
						<div class="row">
						  <div class="col-sm-4"><?php echo $value["id"];?></div>
						  <div class="col-sm-4"><?php echo $value["name"];?></div>
						  <div class="col-sm-4">1</div>
						  <div class="col-sm-4">$<?php echo $value["price"];?></div>
						  
						</div>	
					<?php	
					}
					?>
               
					<p> 
                        <a class = "deleteProduct btnStyleCancel btn-default btn" value="<?php echo $value['id']?>" href="javascript:void(0);">Delete Combo
                        </a>
                        <a class = "btnStyle btn-default btn" href="index.php?option=com_order&view=order&layout=edit">Order Details
                        </a>
                    </p>
				<?php 
				}else{?>
					<p>There is no product in your cart currently, please start choosing a <a class = "aLink" href="index.php#combos">Combo</a></p>
				<?php }?>

			
			</div>
			
			<div id="PaymentHistory" class="tabcontent">
				<h3>Payment History</h3>
				<?php 
				$db = JFactory::getDBO();
				$user = JFactory::getUser();
				$query = "SELECT * FROM #__order where created_by=".$user->id;
				$db->setQuery($query);
				$orders = $db->loadObjectList();

				?>
				<div class="paymentTableHolder">
					<table id="paymentTable" style="width:100%";>
						<tr>
							<th>OrderID</th>
							<th>Payment type</th>
							<th>Combo Type</th>
							<th>Pickup Date</th>
							<th>Dropoff Date</th>
							<th>Status</th>						
						</tr>
						<?php 
						if($orders){
							foreach($orders as $key=>$value){
							?>
								<tr>
									<td>#<?php echo $value->id;?></td>
									<td>Paypal</td>
									<td><?php 
										$query = "Select name from #__combos_combo where id=".$value->comboid;
										$db->setQuery($query);
										echo $db->loadResult();
									?></td>
									<td><?php echo $value->date_timepickup;?></td>
									<td><?php echo $value->date_timedelivery;?></td>
									<td><?php 
										switch($value->status){
											case '1':
												echo 'Completed';
												break;
											case '0':
												echo 'Cancel';
												break;
											case '2':
												echo 'Pending';
												break;
										}?>
									</td>
									
								</tr>
							
							<?php
							}
						}
						?>
							
					</table>
				</div>
			</div>
<script>
	
	function openAccount(evt, tabName) {
	    var i, tabcontent, tablinks;
	    tabcontent = document.getElementsByClassName("tabcontent");
	    for (i = 0; i < tabcontent.length; i++) {
	        tabcontent[i].style.display = "none";
	    }
	    tablinks = document.getElementsByClassName("tablinks");
	    for (i = 0; i < tablinks.length; i++) {
	        tablinks[i].className = tablinks[i].className.replace(" active", "");
	    }
	    document.getElementById(tabName).style.display = "block";
	    evt.currentTarget.className += " active";
	}
	document.getElementById("defaultOpen").click();
</script>