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
//= require_directory .
//= require_self
//= require_tree .


//$(function(){　←は不要


//  $("a").hover(function(){
  //  $(this).css("background-color", "red")
 // });

//$('#logo').fadeOut(3000); 

/*
$('img').hover(function(){
  $(this).css({float:'left', right: '500px'}).animate({width:300, height:300}, 300)}//文字列はクォーターで囲むEx）height:'500px'
  ,function(){
    $(this).animate({opacity: 0.7}, 100)}
);
*/

//↑ここまで練習

$("a,a img").hover(function(){
  $(this).stop(true).animate({opacity: '0.7'}, {duration :200})},
function(){
  $(this).stop(true).animate({opacity: '1'}, {duration :300});
});

$('.btn').hover(function(){
  $(this).animate({paddingLeft: '50px', paddingRight: '50px'}, 300)},
  function(){
  $(this).animate({paddingLeft: '10px', paddingRight: '10px'}, 200)}
  );

  $(".japan").click(function(){
  //$(this).animate({backgroundColor: '#000'}, 3000);
  $(this).fadeOut(800),
  $(this).fadeIn(300);
});

$(window).load(function(){
  $('bwWrapper').BlackAndWhite({
    hoverEffect : true, // default true
    // set the path to BnWWorker.js for a superfast implementation
    webworkerPath : false,
    // for the images with a fluid width and height 
    responsive:true,
    // to invert the hover effect
    invertHoverEffect: false,
    speed: { //this property could also be just speed: value for both fadeIn and fadeOut
      fadeIn: 800, // 200ms for fadeIn animations
      fadeOut: 800 // 800ms for fadeOut animations
    },
    onImageReady:function(img) {
      // this callback gets executed anytime an image is converted
    }
  });
});

