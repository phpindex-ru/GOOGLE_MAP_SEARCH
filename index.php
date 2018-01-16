<?php
class GoogleMap {
public function __construct ($category, $city){
$this->category = $category;
$this->city     = $city;
    }

public function show (){
    require_once 'dbconfig.php';
    $query = "SELECT title, lat, lng, description	FROM tbl_users WHERE category = '$this->category' AND city = '$this->city'";
    $stmt = $DBcon->prepare($query);
    $stmt->execute();
    $userData = array();
    while($row=$stmt->fetch(PDO::FETCH_ASSOC)){
     $userData[] = $row;
    }
    echo 'var markers = ';
    echo json_encode($userData);
    echo ';';
}
}
?>
  <form action='' method='get' enctype='multipart/form-data'>

<select name="category">
    <option selected></option>
    <option value="hotel">hotel</option>
    <option value="store">store</option>
    <option value="restoran">restoran</option>
  </select>
  <select name="city">
    <option selected></option>
    <option value="volgograd">vplgograd</option>
    <option value="piter">piter</option>
  </select>
<input type="submit" name="filter" value="filter">
</form>
<script type="text/javascript">
<?php
If(isset($_GET['filter'])) {
    $category = $_GET['category'];
    $city     = $_GET['city'];

$GoogleMap = new GoogleMap($category, $city);
$GoogleMap->show();
} else {
    $category = 'store';
    $city     = 'volgograd';   
$GoogleMap = new GoogleMap($category, $city);
$GoogleMap->show();
}
?>

  window.onload = function () {
            LoadMap();
        }
        function LoadMap() {
            var mapOptions = {
                center: new google.maps.LatLng(markers[0].lat, markers[0].lng),
                zoom: 8,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var infoWindow = new google.maps.InfoWindow();
            var latlngbounds = new google.maps.LatLngBounds();
            var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);

            for (var i = 0; i < markers.length; i++) {
                var data = markers[i]
                var myLatlng = new google.maps.LatLng(data.lat, data.lng);
                var marker = new google.maps.Marker({
                    position: myLatlng,
                    map: map,
                    title: data.title
                });
                (function (marker, data) {
                    google.maps.event.addListener(marker, "click", function (e) {
                        infoWindow.setContent("<div style = 'width:200px;min-height:40px'>" + data.description + "</div>");
                        infoWindow.open(map, marker);
                    });
                })(marker, data);
                latlngbounds.extend(marker.position);
            }
            var bounds = new google.maps.LatLngBounds();
            map.setCenter(latlngbounds.getCenter());
            map.fitBounds(latlngbounds);
        }
    </script>
    <div id="dvMap" style="width: 300px; height: 400px">
    </div>
    <script async defer            
    src="https://maps.googleapis.com/maps/api/js?key=API_KEY&callback=initMap">
    </script>
