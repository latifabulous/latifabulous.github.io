  // fungsi initialize untuk mempersiapkan peta
  function initialize() {
    var propertiPeta = {
    center:new google.maps.LatLng(-8.5830695,116.3202515),
    zoom:9,
    mapTypeId:google.maps.MapTypeId.ROADMAP
    };

    var peta = new google.maps.Map(document.getElementById("googleMap"), propertiPeta);
  }




// function login () {

// 	var username = document.getElementById("uname").value;
// 	var password = document.getElementById("pass").value;

// 	if((username=="latifabulous") && (password=="baekhyun")){
//       swal.fire('ok');
//       return
// 	}

//       swal.fire('salah oe');
// }



