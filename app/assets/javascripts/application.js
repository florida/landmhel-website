// Flatly
// Bootswatch
//= require jquery_ujs
//= require flatly/loader
//= require flatly/bootswatch 

['property_type', 'area', 'style', 'province', 'agent', 'price', 'bedrooms', 'bathrooms', 'min_bedrooms', 'min_bathrooms'].forEach(function(select){
  $('#' + select).prop('selectedIndex', -1);
});

$('.contact-agent').click(function() {
  $("#inquiry_agent_id").val($(this).attr('data-agent-id'));
});

$('div').css('background-color', function() { return $(this).data('color'); });