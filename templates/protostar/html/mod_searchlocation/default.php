<?php
/**
 * @copyright	Copyright (c) 2017 AITLaundry. All rights reserved.
 * @license		http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */

// no direct access
defined('_JEXEC') or die;

?>
<style>
	#map_wrapper {
	    height: 400px;
	}

	#map_canvas {
	    width: 100%;
	    height: 100%;
	}
</style>
<?php
	$db = JFactory::getDBO();
	$query = $db->getQuery(true);
	$query->select('*');
	$query->from('#__location'); 
	$query->where('state = 1');   //put your condition here    
	$db->setQuery($query);
	if ($db->getErrorNum()) {
	  echo $db->getErrorMsg();
	  exit;
	}
	$rows = $db->loadObjectList();
	$arrayItem = array();
	$arrayDesc = array();
	$arrayAddress = array();
	// echo '<pre>';
	// print_r($rows);die;
	foreach($rows as $key=>$value){

		//echo $value->latitude;
		//echo $value->longitude;
		$arrayItem[] =  '['.$db->quote($value->suburbname).','.$value->latitude.','.$value->longitude.']';
		$arrayDesc[] =  '['.$db->quote($value->infobox).']';
		$arrayAddress[] =  $db->quote($value->suburbname);
		$arrayAddress[] =  $db->quote($value->postcode);
	}
	//print_r($arrayItem);die;
	//echo implode(',', $arrayAddress);die;
?>
<script>
	var allMarkers;
	var bounds;
	jQuery(function($) {
    // Asynchronously Load the map API 
    var map;
	
    var script = document.createElement('script');
    script.src = "//maps.googleapis.com/maps/api/js?sensor=false&callback=initialize&key=AIzaSyAmgL1tXr-qF0GXLGXef0yBRdM37WV2aMg";
    document.body.appendChild(script);
});

function initialize() {
    allMarkers =  [];
    bounds = new google.maps.LatLngBounds();
    var mapOptions = {
        mapTypeId: 'roadmap'
    };
                    
    // Display a map on the page
    map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
    map.setTilt(45);
        
    // Multiple Markers
    var markers = [
        <?php echo implode(',', $arrayItem);?>
    ];
                        
    // Info Window Content
    var infoWindowContent = [
        <?php echo implode(',', $arrayDesc);?>
    ];
        
    // Display multiple markers on a map
    var infoWindow = new google.maps.InfoWindow(), marker, i;
    
    // Loop through our array of markers & place each one on the map  
    for( i = 0; i < markers.length; i++ ) {
        var position = new google.maps.LatLng(markers[i][1], markers[i][2]);
        bounds.extend(position);
        marker = new google.maps.Marker({
            position: position,
            map: map,
            title: markers[i][0]
        });
        
        allMarkers.push(marker);
        
        // Allow each marker to have an info window    
        google.maps.event.addListener(marker, 'click', (function(marker, i) {
            return function() {
                infoWindow.setContent(infoWindowContent[i][0]);
                infoWindow.open(map, marker);
            }
        })(marker, i));

        // Automatically center the map fitting all markers on the screen

        map.fitBounds(bounds);
    }

    // Override our map zoom level once our fitBounds function runs (Make sure it only runs once)
    var boundsListener = google.maps.event.addListener((map), 'bounds_changed', function(event) {
        this.setZoom(14);
        google.maps.event.removeListener(boundsListener);
    });
    
}
</script>



<div id="map_wrapper">
    <div id="map_canvas" class="mapping"></div>
</div>
<form>
	<input type="text" name="search" class="search-box search-location-box" placeholder="Enter an address or postal code here..." />
</form>	
<script type="text/javascript">
      jQuery(document).ready(function() {

      	jQuery('.search-location-box').keyup(function(){
      		//console.log(this.value);
      		if(!this.value){
      			map.fitBounds(bounds);
      		}
      	});

        var searchBox = jQuery('.search-box');
        var dataLocations = [];
        <?php foreach($rows as $key=>$value){
        	?>
        	dataLocations[<?php echo $key;?>] = [];
        	dataLocations[<?php echo $key;?>]['surburb'] = <?php echo $db->quote($value->suburbname);?>;
        	dataLocations[<?php echo $key;?>]['longitude'] = <?php echo $db->quote($value->longitude);?>;
        	dataLocations[<?php echo $key;?>]['latitude'] = <?php echo $db->quote($value->latitude);?>;
        	dataLocations[<?php echo $key;?>]['postcode'] = <?php echo $db->quote($value->postcode);?>;
        <?php }?>
        //console.log(dataLocations);
        searchBox.omniselect({
          source: [<?php echo implode(',', $arrayAddress);?>]
        });
        
        searchBox.on('omniselect:select', function(event, value) {
          //console.log('Selected: ' + value);
          
          var longitude='', latitude='';
          var currentMarkerPosition = null;
          if(dataLocations){
          	//console.log(dataLocations.length);
          	//console.log(dataLocations[0]);
          	for(var i=0; i<dataLocations.length; i++){
          		if(dataLocations[i]['surburb']== value || dataLocations[i]['postcode']== value){
          			//console.log(dataLocations[i]['longitude']);
          			longitude = dataLocations[i]['longitude'];
          			latitude = dataLocations[i]['latitude'];
          			currentMarkerPosition = new google.maps.LatLng(latitude, longitude);	
          			//console.log(position);
          			map.panTo(currentMarkerPosition);
          			map.setZoom(18);
          			new google.maps.event.trigger( allMarkers[i], 'click' );
          			//console.log(allMarkers[i].getPosition());
          			//console.log(allMarkers);

          		}
         //  		for(var j=0; j<allMarkers.length;j++){
      			// 	console.log(allMarkers[j].getPosition().equals(currentMarkerPosition));
      			// }
          	}

          }
        });

        searchBox.on('omniselect:add', function(event, value) {
          console.log('Added: ' + value);
        });
      });
    </script>