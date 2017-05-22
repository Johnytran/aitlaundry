<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_users
 *
 * @copyright   Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
$tab= JRequest::getVar('tab',1);
$session = JFactory::getSession();
$cart = $session->get('yourcart');
//print_r($cart);
?>
<style>
    .close{
           position: relative;
            top: -20px;
            color: #000;
            font-size: 80px;
            font-weight: bold;
    }

</style>
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
                                <input class="form-control" name="firstName" value="<?php echo $this->data->firstName;?>" id="firstName" placeholder="First Name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="lastName" class="col-sm-4 control-label">Last Name:</label>
                            <div class="col-sm-8">
                                <input class="form-control" name="lastName" value="<?php echo $this->data->lastName;?>" id="lastName" placeholder="Last Name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="emailInput" class="col-sm-4 control-label">Email:</label>
                            <div class="col-sm-8">
                                <input class="form-control" name="email" value="<?php echo $this->data->email;?>" id="emailInput" placeholder="Email">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="mobilePhone" class="col-sm-4 control-label">Mobile Phone:</label>
                            <div class="col-sm-8">
                                <input class="form-control" name="mobilePhone" value="<?php echo $this->data->mobilePhone;?>" id="mobilePhone" placeholder="Mobile Phone">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="homePhone" class="col-sm-4 control-label">Home Phone:</label>
                            <div class="col-sm-8">
                                <input class="form-control" name="homePhone" id="homePhone" value="<?php echo $this->data->homePhone;?>" placeholder="Home Phone">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword" class="col-sm-4 control-label">Password:</label>
                            <div class="col-sm-8">
                                <input type="password" name="password" class="form-control" id="inputPassword" placeholder="Password">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword" class="col-sm-4 control-label">Confirm Password</label>
                            <div class="col-sm-8">
                                <input type="password" name="password2" class="form-control" id="inputPassword" placeholder="Password">
                            </div>
                        </div>
                        </div>
                        <div class="column span1-2">
                            <div class="form-group">
                            <label for="streetAddress" class="col-sm-4 control-label">Address:</label>
                            <div class="col-sm-8">
                                <input class="form-control" name="streetAddress" value="<?php echo $this->data->address;?>" id="streetAddress" placeholder="Street Address">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <div class="col-sm-offset-4 col-sm-8">
                                <button type="submit" class="btn btn-default btnStyle">Save</button>
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
				  <div class="col-sm-4">Num</div>
				  <div class="col-sm-4">Combos</div>
				  <div class="col-sm-4">Quantity</div>
				  <div class="col-sm-4">Price</div>
				  <div class="col-sm-4">Task</div>
				</div>
				<?php
					//print_r($cart);
					foreach($cart as $key=>$value){?>
						<div class="row">
						  <div class="col-sm-4"><?php echo $value["id"];?></div>
						  <div class="col-sm-4"><?php echo $value["name"];?></div>
						  <div class="col-sm-4">1</div>
						  <div class="col-sm-4">$<?php echo $value["price"];?></div>
						  <div class="col-sm-4"><a href="index.php?option=com_combos&task=combos.deleteProduct&id=<?php echo $value['id']?>">Delete</a></div>
						</div>	
				<?php	
					}
				}else{?>
					<p>There is no products in your cart currently, please start shoosing a combo.</p>
				<?php 
				}
				?>
			</div>
			
			<div id="PaymentHistory" class="tabcontent">
				<h3>Payment History</h3>
				<div class="paymentTableHolder">
					<table id="paymentTable" style="width:100%";>
						<tr>
							<th>OrderID</th>
							<th>Payment</th>
							<th>Payment type</th>
							<th>Combo Type</th>
							<th>Pickup Date</th>
							<th>Dropoff Date</th>
							<th>Status</th>						
						</tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
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