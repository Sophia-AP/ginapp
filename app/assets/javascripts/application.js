// This is a manifest file that'll be compiled into application, which will include all the files
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
//= require jquery-1.11.1
//= require jquery-1.11.1.min
//= require jquery.anyslider
//= require bootstrap
//= require bootstrap.min
//= require_self

// Without any options
//$('.slider').anyslider();

// Options
//easing: 'easeOutBounce',
//interval: 2000,   // Duration item stays put; 0 to disable autoplay.
//keyboard: false,  // Control slides with keyboard arrows.
//animation: 'slide',
//easing: 'swing',
//speed: 1000,      // Speed of item travel across screen.
//keyboard: true,
//nextLabel: 'Next slide',
//pauseOnHover: true,
//prevLabel: 'Previous slide',
//reverse: false,
//showBullets: true,
//showControls: true,
//startSlide: 1,
//touch: true

$('.slider1').anyslider({
  interval: 1,     // Duration item stays put; 0 to disable autoplay.
  speed: 2000,     // Speed of item travel across screen.
  pauseOnHover: true,
  startSlide: 1,
  keyboard: false,
  reverse: true
});

$('.slider2').anyslider({
  interval: 1,  // Duration item stays put; 0 to disable autoplay.
  speed: 2000,     // Speed of item travel across screen.
  keyboard: false
});

$('.slider3').anyslider({
  interval: 1,     // Duration item stays put; 0 to disable autoplay.
  speed: 1000,     // Speed of item travel across screen.
  pauseOnHover: true,
  startSlide: 0,
  keyboard: false,
  reverse: true
});

$('.slider4').anyslider({
  //easing: 'easeOutBounce',
  //interval: 0,
  animation: 'fade',
  interval: 2000,   // Duration item stays put; 0 to disable autoplay.
  speed: 1000,      // Speed of item travel across screen.
  //nextLabel: 'Next slide',
  pauseOnHover: true,
  keyboard: false
  //prevLabel: 'Previous slide',
  //reverse: false,
  //showBullets: true,
  //showControls: true,
  //startSlide: 1,
  //touch: true
});
