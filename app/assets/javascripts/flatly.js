// Flatly
// Bootswatch
//= require jquery.min
//= require jquery_ujs
//= require flatly/loader
//= require flatly/bootswatch


jQuery(document).ready(function ($) {
  ['property_type', 'area', 'style', 'province', 'agent', 'price', 'bedrooms', 'bathrooms', 'min_bedrooms', 'min_bathrooms'].forEach(function(select){
    $('#' + select).prop('selectedIndex', -1);
  });
  
});

