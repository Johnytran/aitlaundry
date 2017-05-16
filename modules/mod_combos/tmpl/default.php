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
?>

<div id="combos" class="container-fluid">
	<h1>Combos</h1>
	<div class="combosection">
		<div class="container-fluid" style="padding:0px 30px 50px 30px;">
			<h5>Little explaination of how the combo system works!</h5>
		</div>
		<div style="max-width:1100px; margin:0 auto 20px auto">
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
								<h4>SELECT</h4>
							</div>
						</div>	

				<?php } 
				}
				?>
			<!--<div id="single" class="col-sm-3 combobox" style="">
				<div class="container-fluid" style="padding:20px; background-color:white;">
					<img src="templates/protostar/images/single.png" style="max-width:200px">
				</div>
				<div class="combodescription">
					<p>DESCRIPTION</p>
				</div>
				<div class="title">
					<h4>SINGLE</h4>
				</div>

				<div class="pricefrom">
					<p style="background-color:black; color:white;">$<span style="font-size:30px;">35</span>/mo</p>
				</div>
				<div class="combosubbox dropdownbox">
					<img style="max-width:40px" src="templates/protostar/images/wash.png"><br>
					<br><p><strong>Washing</strong> - 10kg</p>
					<div class="dropdownbox-content">
						this is an example for my website 
					</div>
				</div>
				<div class="combosubbox dropdownbox">
					<img style="max-width:60px" src="templates/protostar/images/ironing.png">
					<br><p><strong>Ironing</strong> - Not Included
					</p>
					<div class="dropdownbox-content">
						this is an example for my website 
					</div>
				</div>
				<div class="combosubbox dropdownbox">
					<img style="max-width:40px" src="templates/protostar/images/dryclean.png"><br>
					<br><p><strong>Dry Cleaning</strong> - 5 Itens
					</p>
					<div class="dropdownbox-content">
						this is an example for my website 
					</div>
				</div>
				<div class="combosubbox dropdownbox">
					<img style="max-width:65px" src="templates/protostar/images/delivery_combo.png"><br>
					<br><p><strong>Delivery</strong> - 1 p.w
					</p>
					<div class="dropdownbox-content">
						this is an example for my website 
					</div>
				</div>
				<div class="selectcombo">
					<h4>SELECT</h4>
				</div>
			</div>
			<div id="couple" class="col-sm-3 combobox" style="margin-left:12.3%">
				<div class="container-fluid" style="padding:30px 20px; background-color:white;">
					<img src="templates/protostar/images/couple.png" style="max-width:300px;">
				</div>
				<div class="combodescription">
					<p>DESCRIPTION</p>
				</div>
				<div class="title">
					<h4>COUPLE</h4>
				</div>

				<div class="pricefrom">
					<p style="background-color:black; color:white;">$<span style="font-size:30px;">55</span>/mo</p>
				</div>
				<div class="combosubbox dropdownbox">
					<img style="max-width:40px" src="templates/protostar/images/wash.png"><br>
					<br><p><strong>Washing</strong> - 15kg</p>
					<div class="dropdownbox-content">
						this is an example for my website 
					</div>
				</div>
				<div class="combosubbox dropdownbox">
					<img style="max-width:60px" src="templates/protostar/images/ironing.png">
					<br><p><strong>Ironing</strong> - Included
					</p>
					<div class="dropdownbox-content">
						this is an example for my website 
					</div>
				</div>
				<div class="combosubbox dropdownbox">
					<img style="max-width:40px" src="templates/protostar/images/dryclean.png"><br>
					<br><p><strong>Dry Cleaning</strong> - 10 Itens
					</p>
					<div class="dropdownbox-content">
						this is an example for my website 
					</div>
				</div>
				<div class="combosubbox dropdownbox">
					<img style="max-width:65px" src="templates/protostar/images/delivery_combo.png"><br>
					<br><p><strong>Delivery</strong> - 1 p.w
					</p>
					<div class="dropdownbox-content">
						this is an example for my website 
					</div>
				</div>
				<div class="selectcombo">
					<h4>SELECT</h4>
				</div>
			</div>
			<div id="family" class="col-sm-3 combobox" style="margin-left:12.3%">
				<div class="container-fluid" style="padding:30px 20px; background-color:white;">
					<img src="templates/protostar/images/family.png" style="max-width:300px">
				</div>
				<div class="combodescription">
					<p>DESCRIPTION</p>
				</div>
				<div class="title">
					<h4>FAMILY</h4>
				</div>

				<div class="pricefrom">
					<p style="background-color:black; color:white;">$<span style="font-size:30px;">75</span>/mo</p>
				</div>
				<div class="combosubbox dropdownbox">
					<img style="max-width:40px" src="templates/protostar/images/wash.png"><br>
					<br><p><strong>Washing</strong> - 20kg</p>
					<div class="dropdownbox-content">
						this is an example for my website 
					</div>
				</div>
				<div class="combosubbox dropdownbox">
					<img style="max-width:60px" src="templates/protostar/images/ironing.png">
					<br><p><strong>Ironing</strong> - Included
					</p>
					<div class="dropdownbox-content">
						this is an example for my website 
					</div>
				</div>
				<div class="combosubbox dropdownbox">
					<img style="max-width:40px" src="templates/protostar/images/dryclean.png"><br>
					<br><p><strong>Dry Cleaning</strong> - 20 Itens
					</p>
					<div class="dropdownbox-content">
						this is an example for my website 
					</div>
				</div>
				<div class="combosubbox dropdownbox">
					<img style="max-width:65px" src="templates/protostar/images/delivery_combo.png"><br>
					<br><p><strong>Delivery</strong> - 2 p.w
					</p>
					<div class="dropdownbox-content">
						this is an example for my website 
					</div>
				</div>
				<div class="selectcombo">
					<h4>SELECT</h4>
						</div>
					</div>
				</div>
			</div>-->
		</div>
	</div>
</div>