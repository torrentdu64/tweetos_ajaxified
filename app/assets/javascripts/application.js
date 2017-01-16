//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .


$(document).ready(function() {
  $( "#image" ).append('<i class="fa fa-spinner fa-pulse fa-3x fa-fw"></i>').fadeIn( 400 );
  $( "#image" ).delay( 3000 );
  $( "#image" ).slideUp( 800);
  // $("#image-final").append('<img class="img" src="http://lorempixel.com/740/680/#{@wall.photo}/" alt="Nightlife">').delay(200000).queue(function (next) {
  //   next();
  // });
  function someFunction() {
    for (var i = 0; i < 10; i++) {
        setTimeout(function(){
        addElement();
        }, 100000 * i);
    }
  }

  function addElement() {
    $("#image-final").append('<img class="img" src="http://lorempixel.com/740/680/#{@wall.photo}/" alt="Nightlife">');
  }
  someFunction();
});
