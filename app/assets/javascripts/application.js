// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.turbolinks
//= require foundation
//= require turbolinks
//= require fixed-bootstrap.min
//= require ckeditor/override
//= require ckeditor/init
//= require_tree .


//$(document).ready(function(){

$(function(){
  //$('.categories').hide();
  // $('.languages').hide();

  $('#languages').click(function() {
    $(".languages").slideToggle();
  });

  $('#categories').click(function() {
    $(".categories").slideToggle();
  });

});


$(function(){ $(document).foundation(); });

// $(function() {

//   var languagePanels = $('.languageNavItem');
//   var categoryPanels = $('.categoryNavItem');
//   var allPanels = $('.languageNavItem, .categoryNavItem').hide();

//   $('#languages').click(function() {
//     languagePanels.slideToggle();
//     categoryPanels.slideUp();
//     return false;
//   });

//   $('#categories').click(function() {
//     categoryPanels.slideToggle();
//     languagePanels.slideUp();
//     return false;
//   });
// });
