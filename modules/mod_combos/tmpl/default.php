<?php
/**
 * @copyright	Copyright (c) 2017 AIT. All rights reserved.
 * @license		http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */

// no direct access
defined('_JEXEC') or die;

$db = JFactory::getDBO();
$query = $db->getQuery(true);
$query->select("*");
$query->from("#__combos_combo");
$query->where("state=1");
$query->order("ordering ASC");

$db->setQuery($query);
$result = $db->loadObjectList();
$user  = JFactory::getUser();
?>
<script>

	jQuery(document).ready(function(){
		
		jQuery('a.addCart').click(function(){
			var comboID = jQuery(this).attr('value');
			
			var request = jQuery.ajax({
			  url: "index.php?option=com_combos&task=combos.addCart",
			  method: "GET",
			  data: { id : comboID },
			  dataType: "html"
			});
			 
			request.done(function( msg ) {
				//console.log(msg);
				var wCbo = 500;
				var hCbo = 400;
			  switch( msg ){
			  	case '1':
			  		jQuery.colorbox({width: wCbo, height: hCbo, html:"<div class='cbomessage'><p>The combos is added to cart</p><p><a href='index.php?option=com_users&view=profile&layout=edit&tab=2&user_id=<?php echo $user->id;?>' class='btn'>View cart</a></p></div>"});
			  		
			  		break;
			  	case '2':
			  		jQuery.colorbox({width: wCbo, height: hCbo, html:"<div class='cbomessage'><p>Please complete checkout firstly before purchase other combos.<br> Do you want to swap the combo?</p><p><span class='left'><a class='btn' href='index.php?option=com_combos&task=combos.changeProduct&id="+comboID+"'>Yes</a></span><span class='right'><a class='btn' href=''>Cancel</a></span></p></div>"});
			  		break;
			  	case '3':
			  		alert('fdas');
			  		jQuery.colorbox({width: wCbo, height: hCbo, html:"<div class='cbomessage'><p>You need to login firstly.</p><p><a class='btn' href='index.php?option=com_users&view=login&tab=2'>Login</a></p></div>"});
			  		break;
			  	case '4':
			  		jQuery.colorbox({width: wCbo, height: hCbo, html:"<div class='cbomessage'><p>This is not a valid combo.</p></div>"});
			  		break;
			  }
			});
			 
			request.fail(function( jqXHR, textStatus ) {
			  alert( "Request failed: " + textStatus );
			});

			return false;
		});
		
	});
</script>
<div id="combos" class="container-fluid" >
	<h1>Combos</h1>
	<div class="combosection">
		<div class="container-fluid" style="padding:20px; background-color:white;">
			<h5>Little explaination of how the combo system works!</h5>
		</div>
		<div class="comboContainer">
			<?php
				if($result==null){
					echo "<p>There has no had combos available recently</p>";
				}else{
					foreach($result as $key=>$value){
			?>
						<div id="single" class="col-sm-3 combobox">
							<?php echo $value->description; 
							
							?>
							<div class="title">
								<h4><?php echo $value->name; ?></h4>
							</div>
							<?php
							$query = $db->getQuery(true);
							$query->select("*");
							$query->from("#__services");
							$query->where("comboid=".$value->id);
							$query->order("ordering ASC");

							$db->setQuery($query);
							$rowServices = $db->loadObjectList();
							$totalPrice = 0;
							if(count($rowServices)){
								foreach($rowServices as $k=>$v){
									$totalPrice+=$v->price;
								}
							}?>
							
							<div class="pricefrom">
								<p style="background-color:black; color:white;">$<span style="font-size:30px;"><?php echo $totalPrice;?></span>/mo</p>
							</div>
							<?php 
							if(count($rowServices)){
								foreach($rowServices as $k=>$v){
									$totalPrice+=$v->price;
									?>
										<div class="combosubbox dropdownbox">
											<img style="max-width:40px" src="<?php echo $v->icon;?>"/><br>
											<br><p><?php echo $v->name?></p>
											<div class="dropdownbox-content">
												<?php echo $v->description;?> 
											</div>
										</div>
									<?php
								}
							}
							?>
							
							<div class="selectcombo">
								<h4><a class="addCart" href="javascript:void(0);" value="<?php echo $value->id;?>">SELECT</a></h4>
							</div>
						</div>	

				<?php } 
				}
				?>

			
		</div>
	</div>
</div>
