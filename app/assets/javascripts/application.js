// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require bootstrap-datepicker
//= require dataTables/jquery.dataTables
//= require dataTables/jquery.dataTables.bootstrap
//= require_tree .

$(document).ready(function(){
  $('#datatables').dataTable({
    "sDom": "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>",
    "sPaginationType": "bootstrap",
    "aaSorting": [[ 5, "desc" ]]
  });
});

$(document).ready(function(){
 $("#image_map a#link1").click(function(){
    $("#lightbox, #lightbox-panel").fadeIn(300);
 })
 $("a#close-panel").click(function(){
     $("#lightbox, #lightbox-panel").fadeOut(300);
 })
})

$(document).ready(function(){
 $("#image_map a#link3").click(function(){
    $("#lightbox, #lightbox-panel").fadeIn(300);
 })
 $("a#close-panel").click(function(){
     $("#lightbox, #lightbox-panel").fadeOut(300);
 })
})

$(document).ready(function(){
 $("#image_map a#link2").click(function(){
    $("#lightbox1, #lightbox-panel_chest").fadeIn(300);
 })
 $("a#close-panel_chest_menu").click(function(){
     $("#lightbox1, #lightbox-panel_chest").fadeOut(300);
 })
})
