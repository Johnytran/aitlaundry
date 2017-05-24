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
<!-- <link href="https://fonts.googleapis.com/css?family=Viga" rel="stylesheet"> -->
<link href="https://fonts.googleapis.com/css?family=Roboto:500" rel="stylesheet">
<!-- Bootstrap -->
<link href="<?php echo $this->baseurl . '/templates/' . $this->template; ?>/css/bootstrap.min.css" rel="stylesheet">
<?php
// Add JavaScript Frameworks
JHtml::_('bootstrap.framework');
$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/js/scroll.js');
$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/js/template.js');
$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/js/jquery.omniselect.js');
$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/js/bootstrap.min.js');
$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/js/jquery.colorbox-min.js');
$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/js/jquery-ui-1.7.2.custom.min.js');
$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/js/timepicker.js');




// Add Stylesheets
$doc->addStyleSheet($this->baseurl . '/templates/' . $this->template . '/css/colorbox.css');
$doc->addStyleSheet($this->baseurl . '/templates/' . $this->template . '/css/myStyle.css');
$doc->addStyleSheet($this->baseurl . '/templates/' . $this->template . '/css/ui-lightness/jquery-ui-1.7.2.custom.css');
?>
<!DOCTYPE html>
<html lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<jdoc:include type="head" />
	<!--[if lt IE 9]><script src="<?php echo JUri::root(true); ?>/media/jui/js/html5.js"></script><![endif]-->
</head>
<body class="site <?php echo $option
	. ' view-' . $view
	. ($layout ? ' layout-' . $layout : ' no-layout')
	. ($task ? ' task-' . $task : ' no-task')
	. ($itemid ? ' itemid-' . $itemid : '')
	. ($params->get('fluidContainer') ? ' fluid' : '');
	echo ($this->direction == 'rtl' ? ' rtl' : '');?>">
	<header>       
	    <nav class="navbar navbar-default" id="navbarStyle">  
	      <div class="container-fluid"> 
	        <!-- Brand and toggle get grouped for better mobile display -->
	        <div class="navbar-header">
	            <a href="index.php"><img src="templates/<?php echo $this->template; ?>/images/logo_impress.jpg"/></a>
	          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	            <span class="sr-only">Toggle navigation</span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	          </button>
	        </div>
	        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	          <ul class="nav navbar-nav navbar-right">
	            <li class="active"><a href="index.php">Home<span class="sr-only">(current)</span></a></li>
	            <li><a onclick="initScroll('how'); return false;" href="#">How it Works</a></li>
	            <li><a onclick="initScroll('combos'); return false;" href="#">Combos</a></li>
	            <li><a onclick="initScroll('locations'); return false;" href="#">Locations</a></li>
	            <li><a href="index.php/about-us">About us</a></li>
	            <li><a href="index.php/contact">Contact us</a></li>
	            <li>
	            	<?php $registerURL =  JRoute::_('index.php?option=com_users&view=registration&Itemid=137'); ?>
	            	<button type="button" class="btn btn-default btn-black" 
	            onclick="location.href='<?php echo $registerURL; ?>'" >Get Started</button>
	            </li>
	            <?php if(!$user->id){?>
	            			<li><button type="button" class="btn btn-default btn-white" onclick="document.getElementById('id01').style.display='block'">Login</button></li>
	            <?php }else{ ?>
	            			<li class="dropdown">
	            				<button class="btn btn-primary dropdown-toggle btn-white" type="button" data-toggle="dropdown">
	            					<?php echo $user->username?></button>

	            				<ul class="dropdown-menu" id="userMenuDrop">
	            					<li><a href="index.php/my-account">Profile</a></li>
	            					<li><a href="index.php?option=com_users&view=profile&layout=default&tab=3">Order</a></li>
	            					<li><a href="index.php?option=com_users&task=user.logout&<?php echo $userToken;?>=1&return=<?php echo base64_encode('index.php');?>">Sign out</a></li>
	            				</ul>
	            			</li>
	            <?php }?>
	          </ul>
	        </div><!-- /.navbar-collapse -->
	      </div><!-- /.container-fluid -->
	    </nav>	
	    <script>
  
        jQuery(document).ready(function(){

                jQuery('#play').click(function(){document.getElementById('video').style.display='block'});     
                
                jQuery('.datetime').datepicker({
                    dateFormat: 'yy-dd-mm',
                    showTime: true,
                    onSelect: function(datetext){

                        var d = new Date(); // for now

                        var h = d.getHours();
                        h = (h < 10) ? ("0" + h) : h ;

                        var m = d.getMinutes();
                        m = (m < 10) ? ("0" + m) : m ;

                        var s = d.getSeconds();
                        s = (s < 10) ? ("0" + s) : s ;

                        datetext = datetext + " " + h + ":" + m + ":" + s;

                        jQuery(this).val(datetext);
                    }
                });     
            });
        </script>
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
	<jdoc:include type="modules" name="modFeaturePhoto" style="none" />
	<jdoc:include type="modules" name="modHowItWork" style="none" />
	<jdoc:include type="modules" name="modCombos" style="none" />
	<jdoc:include type="modules" name="modMidlePosition" style="none" />
	
	<div id="video" class="modal">
	  <div class="modal-content animate">
	    <span onclick="document.getElementById('video').style.display='none'" class="close" title="Close Modal">&times;</span>
	    <div class="videoWrapper">
             <iframe src="https://www.youtube.com/embed/-fDrXUvm0so" frameborder="0"></iframe>
          </div>        
	  </div>
	</div>
        
	<jdoc:include type="modules" name="footer" style="none" />
        
    </main>
	</body>
</html>
