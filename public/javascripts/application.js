///////////////////
// Navigation Tab
/////////////////
$(document).ready(function(){
  $( "ul#topnav li a.unselected" ).hover(
    function() {
      $(this).stop().animate({
        backgroundColor: "#505050"
      }, {
        queue:false,
        duration:300
      });
    },
    function() {
      $(this).stop().animate({
        backgroundColor: "#2E2E2E"
      }, {
        queue:false,
        duration:300
      });
    });
});


///////////////////
// Welcome Actions
///////////////////
$(document).ready(function(){
  $('#welcome_actions .action').hover(function(){
    $(".caption", this).stop().animate({
      top:'0px'
    },{
      queue:false,
      duration:300
    });
  }, function() {
    $(".caption", this).stop().animate({
      top:'-40px'
    },{
      queue:false,
      duration:300
    });
  });
});


///////////////////
// Tablesorter
///////////////////
$(document).ready(function() {
  $("#users").tablesorter();
});

///////////////////
// Downloads count loader
///////////////////
$(document).ready(function() {
  $('#flames_downloads_count').load('projects/downloads_count?title=flames');
  $('#validate_email_downloads_count').load('projects/downloads_count?title=validate_email');
  $('#quick_scrapper_downloads_count').load('projects/downloads_count?title=quick_scrapper');
  $('#truncateHTML_downloads_count').load('projects/downloads_count?title=truncateHTML');
});

///////////////////
// Lazy Styler
///////////////////
$(document).ready(function() {
  $('.lazyStyle').lazyStyler();
});

///////////////////
// Google Analytics script
///////////////////
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-23138954-1']);
_gaq.push(['_trackPageview']);

(function() {
  var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
  ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
  var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();

////////////////////
// jQuery UI Tabs
////////////////////
$(document).ready(function() {
    $("#tabs").tabs();
    $("#tabs").tabs().addClass('ui-tabs-vertical ui-helper-clearfix');
    $("#tabs li").removeClass('ui-corner-top').addClass('ui-corner-left');
});
