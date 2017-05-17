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
    
        /*LOGIN BUTTON*/
        ol.omniselect-results{
			background: gray;
		}
		ol.omniselect-results li{
			color: white;
		}
		ol.omniselect-results li.omniselect-active{
			color: black;
		}
        .btn-primary:focus,
        .btn-primary.focus {
            color: black; 
            background-color: lightgray; 
            border-color: gray;
        }
        .btn-primary:hover {
            color: black; 
            background-color: lightgray; 
            border-color: gray;
        }
        .btn-primary:active,
        .btn-primary.active,
        .open > .dropdown-toggle.btn-primary {
            color: black; 
            background-color: lightgray; 
            border-color: gray;
        }
        .btn-primary:active:hover,
        .btn-primary.active:hover,
        .open > .dropdown-toggle.btn-primary:hover,
        .btn-primary:active:focus,
        .btn-primary.active:focus,
        .open > .dropdown-toggle.btn-primary:focus,
        .btn-primary:active.focus,
        .btn-primary.active.focus,
        .open > .dropdown-toggle.btn-primary.focus {
            color: black; 
            background-color: lightgray; 
            border-color: gray;
        }
        .btn-primary:active,
        .btn-primary.active,
        .open > .dropdown-toggle.btn-primary {
            background-image: none;
        }
        
        .btn-primary.disabled:hover,
        .btn-primary[disabled]:hover,
        fieldset[disabled] .btn-primary:hover,
        .btn-primary.disabled:focus,
        .btn-primary[disabled]:focus,
        fieldset[disabled] .btn-primary:focus,
        .btn-primary.disabled.focus,
        .btn-primary[disabled].focus,
        fieldset[disabled] .btn-primary.focus {
            color: black; 
            background-color: lightgray; 
            border-color: gray;
        }
        .btn-primary .badge {
            color: black; 
            background-color: lightgray; 
            border-color: gray;
        }

        /*     MENU       */
        #userMenuDrop{
            background-color: black;
            color: black;
        
        }
        .dropdown-menu {
          position: relative;
          top: 100%;
          left: 0;
          z-index: 1000;
          display: none;
          float: left;
          max-width: 93px;
          font-size: 14px;
          text-align: center;
          list-style: none;
          -webkit-background-clip: padding-box;
                  background-clip: padding-box;
          border: 1px solid #ccc;
          border: 1px solid rgba(0, 0, 0, .15);
          border-radius: 4px;
          -webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
                  box-shadow: 0 6px 12px rgba(0, 0, 0, .175);

        }
        
        .open{
            margin: 0;
            max-width: 158px;
            padding: 0;
        }
        
        #userMenuDrop li:hover{
            background-color: orange;
            color: black;
        
        }
        

        .dropdown-menu>li>a {
            display: block;
            padding: 2px 20px;
            clear: both;
            font-weight: 400;
            line-height: 1.42857143;
            color: #333;
            white-space: nowrap;
        }
    </style>
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
	            				<button class="btn btn-primary dropdown-toggle btn-white" type="button" data-toggle="dropdown">
	            					<?php echo $user->username?></button>

	            				<ul class="dropdown-menu" id="userMenuDrop">
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
	<jdoc:include type="modules" name="modFeaturePhoto" style="none" />
	<jdoc:include type="modules" name="modHowItWork" style="none" />
	<jdoc:include type="modules" name="modCombos" style="none" />
	<jdoc:include type="modules" name="modMidlePosition" style="none" />
	
	<div id="video" class="modal">
	  <div class="modal-content animate">
	    <span onclick="document.getElementById('video').style.display='none'" class="close" title="Close Modal">&times;</span>
	    <h2 style="text-align:center;">HOW IT WORKS</h2>
	    <video width="400" controls>
	      <source src="" type="">
	    </video>
	  </div>
	</div>
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
