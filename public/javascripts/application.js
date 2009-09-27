// This sets up the proper header for rails to understand the request type,
// and therefore properly respond to js requests (via respond_to block, for example)
$.ajaxSetup({ 
  'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
})
$.fn.pause = function(duration) {
    $(this).animate({ dummy: 1 }, duration);
    return this;
};
$(document).ready(function() {
  // UJS authenticity token fix: add the authenticy_token parameter
  // expected by any Rails POST request.
  $(document).ajaxSend(function(event, request, settings) {
    // do nothing if this is a GET request. Rails doesn't need
    // the authenticity token, and IE converts the request method
    // to POST, just because - with love from redmond.
    if (settings.type == 'GET') return;
    if (typeof(AUTH_TOKEN) == "undefined") return;
    settings.data = settings.data || "";
    settings.data += (settings.data ? "&" : "") + "authenticity_token=" + encodeURIComponent(AUTH_TOKEN);
  });
  
  $('#flash_content').pause(5000).slideUp('slow');
  
  $("tr.row").hover(
   function()
   {
    new_src = $(this).find("img").attr("src").replace(/normal/, 'reverse');
    $(this).find("img.number").attr("src", new_src)
   },
   function()
   {
    new_src = $(this).find("img").attr("src").replace(/reverse/, 'normal');
    $(this).find("img.number").attr("src", new_src)   }
  );
  
  $("a.switch-view").toggle(function(){
    $(".player-photo").addClass("display-none");
    $(".row").addClass("small-row");
    $(".player-photo").removeClass("small-photo");
    $(".player-stat").removeClass("display-none");
    $(".nhl-team-name").removeClass("display-none");
    $(".nhl-team-photo").addClass("display-none");
  }, function () {
    $(".player-photo").removeClass("display-none");
    $(".row").removeClass("small-row");
    $(".player-photo").addClass("small-photo");
    $(".player-stat").addClass("display-none");
    $(".nhl-team-name").addClass("display-none");
    $(".nhl-team-photo").removeClass("display-none");
  });
});