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

$document = JFactory::getDocument();
$document->setTitle('Order Details');
?>
<form action="index.php?option=com_order&task=order.confirm" method="post">
<h1>Order details</h1>
<div class="row">
	<div class="column span1-2">
		<legend>Shipping Information</legend>
	    <div class="form-group">
	    	<div class="col-sm-8">
	        	<label class="hasPopover required invalid">
	       		 Address Pick Up<span class="star">&nbsp;*</span></label>
	        </div>
	        <div class="col-sm-8">
	             <input type="text" name="addresspickup" value="" class="form-control required invalid" size="30" required="required" aria-required="true" aria-invalid="true">                                
	        </div>
	    </div>
	    <div class="form-group">
	    	<div class="col-sm-8">
	        <label class="hasPopover required invalid">
	        	Date Time Pick Up<span class="star">&nbsp;*</span></label>
	        </div>
	        <div class="col-sm-8">
	        	
	            <input type="text" name="date_timepickup" value="" class="form-control required invalid datetime" size="30" required="required" aria-required="true" aria-invalid="true">                                
	        </div>
	    </div>
	    <div class="form-group">
	        <div class="col-sm-8">
	        	<label class="hasPopover required invalid">
	        Address Delivery<span class="star">&nbsp;*</span></label>
	        </div>
	        <div class="col-sm-8">
	             <input type="text" name="addressdeliver" value="" class="form-control required invalid" size="30" required="required" aria-required="true" aria-invalid="true">                                
	        </div>
	    </div>
	    <div class="form-group">
	        <div class="col-sm-8">
	        	<label class="hasPopover required invalid">
	        Date Time Delivery<span class="star">&nbsp;*</span></label>
	        </div>
	        <div class="col-sm-8">
	             <input type="text" name="date_timedelivery" value="" class="form-control required invalid datetime" size="30" required="required" aria-required="true" aria-invalid="true">                                
	        </div>
	    </div>

	    <div class="form-group">
	    	<div class="col-sm-8">
	        	<label class="hasPopover required invalid">
	        Delivery Note<span class="star">&nbsp;*</span></label>
	        </div>
	        <div class="col-sm-8">
	             <textarea type="text" name="deliverynote" rows="7" cols="60"></textarea>                                
	        </div>
	    </div>
	    
		<!--Payment-->
		<legend>Payment Information</legend>
		<div class="radio disabled">
		  <label>
		  <input type="radio" name="paypal" disabled selected>
		  <img src="images/paypal.jpg" alt="Paypal"/>
		  </label>
		</div>
	</div>
</div>
<div class="row">
	<legend>Shopping Cart</legend>
	<?php 
		$session = JFactory::getSession();
		$cart = $session->get('yourcart');
		//print_r($cart);
	?>
</div>
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
		<?php 
		}else{?>
			<div class="row">There is no product in your cart currently, please start choosing a <a class = "aLink" href="index.php#combos">Combo</a></div>
		<?php }?>

	<div class="row">
		<button type="submit">Confirm Order</a>
	</div>
  
</form>