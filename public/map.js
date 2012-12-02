map = {
  initialize: function() {
    map = L.map('locations-map');
    var apiKey = 'd9c90387c1314bc49a6922344ab43bc1';
    L.tileLayer('http://{s}.tile.cloudmade.com/'+apiKey+'/997/256/{z}/{x}/{y}.png', {
      attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://cloudmade.com">CloudMade</a>',
      maxZoom: 18
    }).addTo(map);
    map.locate({setView: true, maxZoom: 12});
    map.on('locationfound', function(e) {
      map.setZoom(13);
    });
  },

  markers: function() {
    // Icons
    var communityGarden = L.icon({
      iconUrl: 'images/icon-garden.png',
      iconSize: [19, 47],
      iconAnchor: [22, 94],
      popupAnchor: [-3, -76],
      shadowUrl: 'images/icon-shadow.png',
      shadowSize: [34, 47],
      shadowAnchor: [14, 94]
    });
    var farmersMarket = L.icon({
      iconUrl: 'images/icon-market.png',
      iconSize: [19, 47],
      iconAnchor: [22, 94],
      popupAnchor: [-3, -76],
      shadowUrl: 'images/icon-shadow.png',
      shadowSize: [34, 47],
      shadowAnchor: [14, 94]
    });

    // Add markers
    $('#locations-list').children().each( function() {
      // Pull meta and popup
      var lat = $(this).find('.lat').text();
      var lon = $(this).find('.lon').text();
      var type = $(this).find('.type').text();
      var popup = $(this).find('.popup').html();

      // Associate a location type with an icon
      switch (type) {
        case 'Community Garden': 
          var iconType = communityGarden;
        break;
        case 'Farmers Market': 
          var iconType = farmersMarket;
        break;
        default:
          var iconType = farmersMarket;
        break;
      }

      // Add the marker
      var marker = L.marker([lat, lon], {icon: iconType}).addTo(map);
      marker.bindPopup(popup);
    });
  },
}
if (typeof window.jQuery != "undefined") {
  jQuery(map.initialize);
  jQuery(map.markers);
}
