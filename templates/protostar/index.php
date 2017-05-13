<?php
/**
 * @package     Joomla.Site
 * @subpackage  Templates.protostar
 *
 * @copyright   Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

$app             = JFactory::getApplication();
$doc             = JFactory::getDocument();
$user            = JFactory::getUser();
$this->language  = $doc->language;
$this->direction = $doc->direction;

// Output as HTML5
$doc->setHtml5(true);

// Getting params from template
$params = $app->getTemplate(true)->params;

// Detecting Active Variables
$option   = $app->input->getCmd('option', '');
$view     = $app->input->getCmd('view', '');
$layout   = $app->input->getCmd('layout', '');
$task     = $app->input->getCmd('task', '');
$itemid   = $app->input->getCmd('Itemid', '');
$sitename = $app->get('sitename');
$userToken = JSession::getFormToken();

?>
<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Viga" rel="stylesheet">

<!-- Bootstrap -->
<link href="<?php echo $this->baseurl . '/templates/' . $this->template; ?>/css/bootstrap.min.css" rel="stylesheet">
<?php
// Add JavaScript Frameworks
JHtml::_('bootstrap.framework');
$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/js/template.js');
$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/js/jquery.omniselect.js');
$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/js/bootstrap.min.js');



// Add Stylesheets
$doc->addStyleSheet($this->baseurl . '/templates/' . $this->template . '/css/myStyle.css');
?>
<!DOCTYPE html>
<html lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<jdoc:include type="head" />
	<!--[if lt IE 9]><script src="<?php echo JUri::root(true); ?>/media/jui/js/html5.js"></script><![endif]-->
</head>
    <style>
    
        #map_wrapper {
            height: 400px;
            max-width: 800px;
            margin: 0 auto;
        }
        
        form{
            max-width: 800px;
            margin: 0 auto;
        }

        #map_canvas {
            width: 100%;
            height: 100%;
        }

    </style>
<body class="site <?php echo $option
	. ' view-' . $view
	. ($layout ? ' layout-' . $layout : ' no-layout')
	. ($task ? ' task-' . $task : ' no-task')
	. ($itemid ? ' itemid-' . $itemid : '')
	. ($params->get('fluidContainer') ? ' fluid' : '');
	echo ($this->direction == 'rtl' ? ' rtl' : '');
?>">
	<header>       
	    <nav class="navbar navbar-default" id="navbarStyle">  
	      <div class="container-fluid"> 
	        <!-- Brand and toggle get grouped for better mobile display -->
	        <div class="navbar-header">
	            <a href="index.html"><img src="templates/<?php echo $this->template; ?>/images/logo_impress.jpg"/></a>
	          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	            <span class="sr-only">Toggle navigation</span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	          </button>
	        </div>
	        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	          <ul class="nav navbar-nav navbar-right">
	            <li class="active"><a href="#">Home<span class="sr-only">(current)</span></a></li>
	            <li><a href="#how">How it Works</a></li>
	            <li><a href="#combos">Combos</a></li>
	            <li><a href="#locations">Locations</a></li>
	            <li><a href="about.html">About</a></li>
	            <li><a href="contact.html">Contact us</a></li>
	            <li>
	            	<?php $registerURL =  JRoute::_('index.php?option=com_users&view=registration&Itemid=137'); ?>
	            	<button type="button" class="btn btn-default btn-black" 
	            onclick="location.href='<?php echo $registerURL; ?>'" >Get Started</button>
	            </li>
	            <?php if(!$user->id){?>
	            			<li><button type="button" class="btn btn-default btn-white" onclick="document.getElementById('id01').style.display='block'">Login</button></li>
	            <?php }else{ ?>
	            			<li class="dropdown">
	            				<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
	            					<?php echo $user->username?></button>

	            				<ul class="dropdown-menu userMenuDrop">
	            					<li><a href="">Profile</a></li>
	            					<li><a href="">Order</a></li>
	            					<li><a href="index.php?option=com_users&task=user.logout&<?php echo $userToken;?>=1&return=<?php echo base64_encode('index.php');?>">Sign out</a></li>
	            				</ul>
	            			</li>
	            <?php }?>
	          </ul>
	        </div><!-- /.navbar-collapse -->
	      </div><!-- /.container-fluid -->
	    </nav>	
	    
		<!-- Login PopUP -->
	    <div id="id01" class="modal">
			<div class="modal-content animate">
	            <div class="container">
	                <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
	                <jdoc:include type="modules" name="moduleLoginPos" style="none" />
	            </div>
		     </div>
		</div>
	</header>
	<main>
	<jdoc:include type="message" />
	<jdoc:include type="component" />
	 <!----------------------- FEATURE MOTTO --------------------->
		<div class="row">
		<div id="banner" class="container-fluid col-xs-12">
			<h2 id="motto">Let our services get you <span id="impressed">IMPRESSED</span>!</h2>
	  <p>BLA BLA BLA BLA BLA BLA BLA BLA</p>
		</div>
		</div>
	<!--------------------------- HOW IT WORKS --------------------->
		<div id="how" class="container-fluid">
	<h1>How it works</h1>
			<div id="how2" class="row">
			  <div class="col-sm-3 col-xs-12">
			    <img src="templates/<?php echo $this->template; ?>/images/laundry-icon.png">
			    <p>CHOOSE YOUR COMBO</p>
			  </div>
			  <div class="col-sm-3 col-xs-12 leftBorder">
			    <img src="templates/<?php echo $this->template; ?>/images/location_icon.png">
			    <p>SET YOUR PREFERENCES</p>
			  </div>
			  <div class="col-md-3 col-xs-12 leftBorder">
			    <img src="templates/<?php echo $this->template; ?>/images/Delivery-Icon.png">
			    <p>WE WILL TAKE CARE OF IT</p>
			  </div>
			  <div class="col-md-3 col-xs-12 leftBorder">
			    <button type="button" class="btn" onclick="document.getElementById('video').style.display='block'" style="padding:0; background-color:rgba(0,0,0,0);">
			        <img id="play" src="templates/<?php echo $this->template; ?>/images/play.png">
			      </button>
			    <p id="playvideo">PLAY VIDEO</p>
			 </div>
			</div> 
			
			<!---------- video pop up------------>
			<div id="video" class="modal">
	  <div class="modal-content animate">
	    <span onclick="document.getElementById('video').style.display='none'" class="close" title="Close Modal">&times;</span>
	    <h2 style="text-align:center;">HOW IT WORKS</h2>
	    <video width="400" controls>
	      <source src="" type="">
	    </video>
	  </div>
	</div>

		</div>
	<!---------------- COMBOS ------------------->
		<!---------------- COMBOS ------------------->
		<div id="combos" class="container-fluid">
			<h1>Combos</h1>
			<div class="combosection">
				<div class="container-fluid" style="padding:0px 30px 50px 30px;">
					<h5>Little explaination of how the combo system works!</h5>
				</div>
				<div style="max-width:1100px; margin:0 auto 20px auto">
					<!-------------------------------------- SINGLE COMBO ---------------------------------->
					<div id="single" class="col-sm-3 combobox" style="">
						<div class="container-fluid" style="padding:20px; background-color:white;">
							<img src="templates/<?php echo $this->template; ?>/images/single.png" style="max-width:200px">
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
							<img style="max-width:40px" src="templates/<?php echo $this->template; ?>/images/wash.png"><br>
							<br><p><strong>Washing</strong> - 10kg</p>
							<div class="dropdownbox-content">
								this is an example for my website 
							</div>
						</div>
						<div class="combosubbox dropdownbox">
							<img style="max-width:60px" src="templates/<?php echo $this->template; ?>/images/ironing.png">
							<br><p><strong>Ironing</strong> - Not Included
							</p>
							<div class="dropdownbox-content">
								this is an example for my website 
							</div>
						</div>
						<div class="combosubbox dropdownbox">
							<img style="max-width:40px" src="templates/<?php echo $this->template; ?>/images/dryclean.png"><br>
							<br><p><strong>Dry Cleaning</strong> - 5 Itens
							</p>
							<div class="dropdownbox-content">
								this is an example for my website 
							</div>
						</div>
						<div class="combosubbox dropdownbox">
							<img style="max-width:65px" src="templates/<?php echo $this->template; ?>/images/delivery_combo.png"><br>
							<br><p><strong>Delivery</strong> - 1 p.w
							</p>
							<div class="dropdownbox-content">
								this is an example for my website 
							</div>
						</div>
						<div class="selectcombo">
							<h4>SELECT</h4>
						</div>
					</div><!---SINGLE--->
					<!------------------------------------------------------- Couple COMBO ---------------------------->
					<div id="couple" class="col-sm-3 combobox" style="margin-left:12.3%">
						<div class="container-fluid" style="padding:30px 20px; background-color:white;">
							<img src="templates/<?php echo $this->template; ?>/images/couple.png" style="max-width:300px;">
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
							<img style="max-width:40px" src="templates/<?php echo $this->template; ?>/images/wash.png"><br>
							<br><p><strong>Washing</strong> - 15kg</p>
							<div class="dropdownbox-content">
								this is an example for my website 
							</div>
						</div>
						<div class="combosubbox dropdownbox">
							<img style="max-width:60px" src="templates/<?php echo $this->template; ?>/images/ironing.png">
							<br><p><strong>Ironing</strong> - Included
							</p>
							<div class="dropdownbox-content">
								this is an example for my website 
							</div>
						</div>
						<div class="combosubbox dropdownbox">
							<img style="max-width:40px" src="templates/<?php echo $this->template; ?>/images/dryclean.png"><br>
							<br><p><strong>Dry Cleaning</strong> - 10 Itens
							</p>
							<div class="dropdownbox-content">
								this is an example for my website 
							</div>
						</div>
						<div class="combosubbox dropdownbox">
							<img style="max-width:65px" src="templates/<?php echo $this->template; ?>/images/delivery_combo.png"><br>
							<br><p><strong>Delivery</strong> - 1 p.w
							</p>
							<div class="dropdownbox-content">
								this is an example for my website 
							</div>
						</div>
						<div class="selectcombo">
							<h4>SELECT</h4>
						</div>
					</div><!---Couple--->
					
					<!--------------------------------------------------------------- family COMBO -------------------------------------->
					<div id="family" class="col-sm-3 combobox" style="margin-left:12.3%">
						<div class="container-fluid" style="padding:30px 20px; background-color:white;">
							<img src="templates/<?php echo $this->template; ?>/images/family.png" style="max-width:300px">
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
							<img style="max-width:40px" src="templates/<?php echo $this->template; ?>/images/wash.png"><br>
							<br><p><strong>Washing</strong> - 20kg</p>
							<div class="dropdownbox-content">
								this is an example for my website 
							</div>
						</div>
						<div class="combosubbox dropdownbox">
							<img style="max-width:60px" src="templates/<?php echo $this->template; ?>/images/ironing.png">
							<br><p><strong>Ironing</strong> - Included
							</p>
							<div class="dropdownbox-content">
								this is an example for my website 
							</div>
						</div>
						<div class="combosubbox dropdownbox">
							<img style="max-width:40px" src="templates/<?php echo $this->template; ?>/images/dryclean.png"><br>
							<br><p><strong>Dry Cleaning</strong> - 20 Itens
							</p>
							<div class="dropdownbox-content">
								this is an example for my website 
							</div>
						</div>
						<div class="combosubbox dropdownbox">
							<img style="max-width:65px" src="templates/<?php echo $this->template; ?>/images/delivery_combo.png"><br>
							<br><p><strong>Delivery</strong> - 2 p.w
							</p>
							<div class="dropdownbox-content">
								this is an example for my website 
							</div>
						</div>
						<div class="selectcombo">
							<h4>SELECT</h4>
						</div>
					</div><!---family--->
				</div>
			</div>
		</div>
		<style>
		  
		</style>
		<!----------------------------------------------- LOCATIONS ------------------------------------------->
		<div id="locations" clas="row">
			<h1>Locations</h1>
			<p style="margin-bottom: 10px;">Now servicing in select neighbourhoods in Sydney.</p>
            <p style="margin-bottom: 20px; color:#faa634">Enter your address or postcode to search availability</p>
			<!-- SEARCHBOX -->
            <jdoc:include type="modules" name="moduleLocationSearch" style="none" />
			<!-------------------------------- Suburbs List ------------------------->
		<div class="container-fluid row" style="padding:30px 0 50px 0;">
			 <div class="col-sm-4">
			   <div class="space2">
			     <p>Sydney City 2000</p>
			   </div>
			   <div class="space2">
			     <p>Sydney City 2000</p>
			   </div>
			   <div class="space2">
			     <p>Sydney City 2000</p>
			   </div>
			 </div>
			 <div class="col-sm-4">
			   <div class="space2">
			     <p>Sydney City 2000</p>
			   </div>
			   <div class="space2">
			     <p>Sydney City 2000</p>
			   </div>
			   <div class="space2">
			     <p>Sydney City 2000</p>
			   </div>
			 </div>
			 <div class="col-sm-4">
			   <div class="space2">
			     <p>Sydney City 2000</p>
			   </div>
			   <div class="space2">
			     <p>Sydney City 2000</p>
			   </div>
			   <div class="space2">
			     <p>Sydney City 2000</p>
			   </div>
			 </div>
		</div>
		</div>
	</main>
	<!--------------------------------- FOOTER ------------------------------------>
	<footer style="background-color:#4d4d4d; margin-top:2px;">
	  <div class="container-fluid">
	    <div class="space1">
	      <div class="col-sm-4 space2">
	          <div>
	              <a href="termsandconditions.html">TERMS & CONDITIONS</a>
	          </div>
	          <div class="row space2">
	              <a href="privacy.html">PRIVACY POLICY</a>
	          </div>
	      </div>
	      <div class="col-sm-4 space2">
	          <div>
	              <a href="about.html">ABOUT US</a>
	          </div>
	          <div class="row space2">
	              <a href="contact.html">CONTACT US</a>
	          </div>
	      </div>
	      <div class="col-sm-4 space2">
	          <div>
	              <a href="about.html">TESTIMONIALS</a>
	          </div>
	          <div class="row space2">
	              <a href="about.html">FAQ</a>
	          </div>
	      </div>
	    </div>
	    <div class="row">
	        <div class="col-xs-12" style="margin-top:20px;">
	                  &copy; AIT LAUNDRY - 2017
	        </div>
	    </div>
	  </div>
	</footer>
	</body>
</html>
