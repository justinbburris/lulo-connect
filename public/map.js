map = {
  initialize: function() {
    map = L.map('locations-map');
    L.tileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
      attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://cloudmade.com">CloudMade</a>',
      maxZoom: 18
    }).addTo(map);
    map.locate({setView: true, maxZoom: 12});
    map.on('locationfound', function(e) {
      map.setZoom(12);
    });
  },

  markers: function() {
    $('#locations-list').children().each( function() {
      var lat = $(this).find('.lat').text();
      var lon = $(this).find('.lon').text();
      var popup = $(this).find('.popup').html();
      var marker = L.marker([lat, lon]).addTo(map);
      marker.bindPopup(popup);
    });
  },
}
if (typeof window.jQuery != "undefined") {
  jQuery(map.initialize);
  jQuery(map.markers);
}
