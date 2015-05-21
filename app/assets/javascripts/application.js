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
//= require jquery.turbolinks
//= require jquery_ujs
//= require jquery-ui
//= require autocomplete-rails
//= require chosen-jquery
//= require_tree .
//= require turbolinks


  $(document).ready(function(){
    $('.stars-big').raty({
      readOnly: true,
      hints   : [null, null, null, null, null],
      starOn  : 'star-on-big.png',
      starOff : 'star-off-big.png',
      starHalf: 'star-half-big.png',
      path: '/assets',
      score   : function() {
        return $(this).attr('data-score');
      }
    });

    $('.stars').raty({
      readOnly: true,
      hints   : [null, null, null, null, null],
      path: '/assets',
      score   : function() {
        return $(this).attr('data-score');
      }
    });

    $('.star-input').raty({
      readOnly: false,
      hints: [null, null, null, null, null],
      half: true,
      path: '/assets',
      score   : function() {
        return $(this).attr('data-score');
      }
    });
  });
