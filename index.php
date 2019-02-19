<html>
<head>
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"><script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script  defer src="https://maps.googleapis.com/maps/api/js?libraries=places&language=en&key=AIzaSyCvJCziXg6DiF0PngBtDAwuY4OT8mQJIIs"  type="text/javascript"></script>
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" id="bootstrap-css" rel="stylesheet" />
   
</head>
<body>
<div class="container">
<div class="row">
<div class="jumbotron" style="background-image:url('img.jpg'); margin-top: 14px;">

<h1>.</h1>
</div>
<h2 style="text-align: center;padding-bottom: 31px;font-size: 25px;">Calculate the Distance Between two Addresses</h2>

<div class="col-md-6">
    <div id="result">
    <ul class="list-group">
        <li class="list-group-item d-flex justify-content-between align-items-center">Distance In Mile :</li>
        <li class="list-group-item d-flex justify-content-between align-items-center">Distance is Kilo:</li>
        <li class="list-group-item d-flex justify-content-between align-items-center">IN TEXT:</li>
        <li class="list-group-item d-flex justify-content-between align-items-center">IN MINUTES:</li>
        <li class="list-group-item d-flex justify-content-between align-items-center">FROM:</li>
        <li class="list-group-item d-flex justify-content-between align-items-center">TO:</li>
    </ul>
    </div>
</div>
<div class="col-md-6">
    <form id="distance_form">
        <div class="form-group"><label>Origin: </label>
         <input class="form-control" id="from_places" placeholder="Enter a location" /> 
         <input id="origin" name="origin" required="" type="hidden" /></div>

        <div class="form-group"><label>Destination: </label> <input class="form-control" id="to_places" placeholder="Enter a location" /> <input id="destination" name="destination" required="" type="hidden" /></div>
        <input style="float: right;" class="btn btn-primary" type="submit" value="Calculate" />
    </form>

</div>

</div>
</div>
<script>
      $(function() {
        // add input listeners
        google.maps.event.addDomListener(window, 'load', function () {
            var from_places = new google.maps.places.Autocomplete(document.getElementById('from_places'));
            var to_places = new google.maps.places.Autocomplete(document.getElementById('to_places'));

            google.maps.event.addListener(from_places, 'place_changed', function () {
                var from_place = from_places.getPlace();
                var from_address = from_place.formatted_address;
                var value=from_address;
                $('#origin').val(value);
            });

            google.maps.event.addListener(to_places, 'place_changed', function () {
                var to_place = to_places.getPlace();
                var to_address = to_place.formatted_address;
                $('#destination').val(to_address);
            });

        });
        
 });

</script>
</body>
</html>
<!-- AIzaSyCvJCziXg6DiF0PngBtDAwuY4OT8mQJIIs -->