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
$document->setTitle('Confirm Order');
?>
<?php 
	$session = JFactory::getSession();
	$cart = $session->get('yourcart');
	//print_r($cart);
	$order = $session->get('order');
	//print_r($order);
?>
<form id="orderDetails" action="index.php?option=com_order&task=order.checkout" method="post">
    <div id="abouttitle" class="container-fluid">
        <h1>Order Confirm</h1>
    </div>
    <div class="row">
	<legend>Shopping Cart</legend>
    </div>
	<?php 
		if(count($cart)){?>
			<div id = "order" class="row">
			  <div class="col-sm-4">Order Code</div>
			  <div class="col-sm-4">Combos</div>
			  <div class="col-sm-4">Quantity</div>
			  <div class="col-sm-4">Price</div>
			</div>
			<?php
			//print_r($cart);
			foreach($cart as $key=>$value){?>
				<div id = "order" class="row">
				  <div class="col-sm-4 space"><?php echo $value["id"];?></div>
				  <div class="col-sm-4 space"><?php echo $value["name"];?></div>
				  <div class="col-sm-4 space">1</div>
				  <div class="col-sm-4 space">$<?php echo $value["price"];?></div>
				  
				</div>	
			<?php	
			}
			?>
		<?php 
		}else{?>
			<div class="row">There is no product in your cart currently, please start choosing a <a class = "aLink" href="index.php#combos">Combo</a></div>
		<?php }?>

<div class="row">
	<div class="column span1-2">
		<legend>Shipping Information</legend>
		<?php if(isset($order)){?>
	    <div class="form-group">
	    	<div>
	        	<label class="hasPopover required invalid">
	       		 Address Pick Up<span class="star">&nbsp;*</span></label>
	        </div>
	        <div>
	             <input type="text" value="<?php echo $order['addresspickup'];?>" class="form-control required invalid" size="30" disabled required="required" aria-required="true" aria-invalid="true">
	             <input type="text" name="addresspickup" value="<?php echo $order['addresspickup'];?>" class="form-control required invalid hidden" size="30">                                
	        </div>
	    </div>
	    <div class="form-group">
	    	<div>
	        <label class="hasPopover required invalid">
	        	Date Time Pick Up<span class="star">&nbsp;*</span></label>
	        </div>
	        <div>
	             <input type="text" name="date_timepickup" value="<?php echo $order['date_timepickup'];?>" class="form-control required invalid" size="30" disabled required="required" aria-required="true" aria-invalid="true">       <input type="text" name="date_timepickup" value="<?php echo $order['date_timepickup'];?>" class="form-control required invalid hidden" size="30">
	        </div>
	    </div>
	    <div class="form-group">
	        <div>
	        	<label class="hasPopover required invalid">
	        Address Delivery<span class="star">&nbsp;*</span></label>
	        </div>
	        <div>
	            <input type="text" name="addressdeliver" value="<?php echo $order['addressdeliver'];?>" class="form-control required invalid" size="30" disabled required="required" aria-required="true" aria-invalid="true">
	            <input type="text" name="addressdeliver" value="<?php echo $order['addressdeliver'];?>" class="form-control required invalid hidden" size="30">                                
	        </div>
	    </div>
	    <div class="form-group">
	        <div>
	        	<label class="hasPopover required invalid">
	        Date Time Delivery<span class="star">&nbsp;*</span></label>
	        </div>
	        <div>
	            <input type="text" name="date_timedelivery" value="<?php echo $order['date_timedelivery'];?>" class="form-control required invalid" disabled size="30" required="required" aria-required="true" aria-invalid="true">
	            <input type="text" name="date_timedelivery" value="<?php echo $order['date_timedelivery'];?>" class="form-control required invalid hidden">                                
	        </div>
	    </div>

	    <div class="form-group">
	    	<div>
	        	<label class="hasPopover required invalid">
	        Delivery Note<span class="star">&nbsp;*</span></label>
	        </div>
	        <div>
	             <textarea class="form-control" name="deliverynote"  disabled rows="7" cols="60"><?php echo $order['deliverynote'];?></textarea>  
	              <textarea class="form-control hidden" name="deliverynote" rows="7" cols="60"><?php echo $order['deliverynote'];?></textarea>  
	        </div>
	    </div>
	    <?php }else{?>
	    	<h4>There is no contact information for delivery please turn back and add it.
	    	</h4>
	    <?php }?>
</div>       
    <div class="column span1-2">
		<!--Payment-->
		<legend>Payment Information</legend>
		<div class="radio disabled">
		  <label>
		  <input type="radio" name="paypal" disabled selected checked>
		  <img src="images/paypal.jpg" alt="Paypal"/>
		  </label>
		</div>
        <div class="row">
        	<a class="btn btn-default btnStyleCancel" href="index.php?option=com_order&view=order">Edit Order</a>
	   </div>
        <div class="row">
            <button class="btn btn-default btnStyle" type="submit">Check out with Paypal</button>
        </div>
	</div>
</div>


  
</form>