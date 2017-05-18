<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_users
 *
 * @copyright   Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
?>

<div id="abouttitle" class="container-fluid">
                <h1>My Account</h1>
            </div>
			<div class="tab">
				<div>
					<button class="tablinks" onclick="openAccount(event, 'Personal')" id="defaultOpen">Personal Info</button>
				</div>
				<div>				
					<button class="tablinks" onclick="openAccount(event, 'Combo')">Combo And Services</button>
				</div>	
				<div>				
					<button class="tablinks" onclick="openAccount(event, 'PaymentHistory')">Payment History</button>
				</div>	
			</div>
			<div id="Personal" class="tabcontent">
				<div id="personalTable">
                    <form class="form-horizontal row" action="index.php?option=com_users&task=profile.update" method="post">
                    <div class="column span1-2">
                            <div class="form-group">
                            <label for="firstName" class="col-sm-4 control-label">First Name:</label>
                            <div class="col-sm-8">
                                <input class="form-control" id="firstName" placeholder="First Name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="lastName" class="col-sm-4 control-label">Last Name:</label>
                            <div class="col-sm-8">
                                <input class="form-control" id="lastName" placeholder="Last Name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="emailInput" class="col-sm-4 control-label">Email:</label>
                            <div class="col-sm-8">
                                <input class="form-control" id="emailInput" placeholder="Email">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="mobilePhone" class="col-sm-4 control-label">Mobile Phone:</label>
                            <div class="col-sm-8">
                                <input class="form-control" id="mobilePhone" placeholder="Mobile Phone">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="homePhone" class="col-sm-4 control-label">Home Phone:</label>
                            <div class="col-sm-8">
                                <input class="form-control" id="homePhone" placeholder="Home Phone">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword" class="col-sm-4 control-label">Password:</label>
                            <div class="col-sm-8">
                                <input type="password" class="form-control" id="inputPassword" placeholder="Password">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword" class="col-sm-4 control-label">Confirm Password</label>
                            <div class="col-sm-8">
                                <input type="password" class="form-control" id="inputPassword" placeholder="Password">
                            </div>
                        </div>
                        </div>
                        <div class="column span1-2">
                            <div class="form-group">
                            <label for="streetAddress" class="col-sm-4 control-label">Street Address:</label>
                            <div class="col-sm-8">
                                <input class="form-control" id="streetAddress" placeholder="Street Address">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="suburb" class="col-sm-4 control-label">Suburb:</label>
                            <div class="col-sm-8">
                                <input class="form-control" id="suburb" placeholder="Suburb">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="city" class="col-sm-4 control-label">City:</label>
                            <div class="col-sm-8">
                                <input class="form-control" id="city" placeholder="City">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="zipPostCode" class="col-sm-4 control-label">Zip/Post Code:</label>
                            <div class="col-sm-8">
                                <input class="form-control" id="zipPostCode" placeholder="Zip/Post Code">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="state" class="col-sm-4 control-label">State:</label>
                            <div class="col-sm-8">
                                <input class="form-control" id="state" placeholder="State">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="country" class="col-sm-4 control-label">Country:</label>
                            <div class="col-sm-8">
                                <input class="form-control" id="country" placeholder="Country">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-4 col-sm-8">
                                <button type="submit" class="btn btn-default btnStyle">Edit</button>
                            </div>
                        </div>
                        </div>
                    </form>
				</div>
			</div>

			<div id="Combo" class="tabcontent">
				<h3>Combo's and services</h3>
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