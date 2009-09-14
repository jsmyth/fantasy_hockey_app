//public/javascripts/application.js

// This sets up the proper header for rails to understand the request type,
// and therefore properly respond to js requests (via respond_to block, for example)
$.ajaxSetup({ 
  'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
})

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
  
  $('#fantasy-teams-list').sortable(
    {
      axis:'y',
      dropOnEmpty:false,
      handle: '.handle',
      cursor: 'crosshair',
      items:'li',
      opacity: 0.4,
      scroll: true,
      containment:'parent',
      update: function() {
        $.ajax({
          type: 'post',
          data: $('#fantasy-teams-list').sortable('serialize'),
          dataType: 'script',
          complete: function(request){
            $('#fantasy-teams-list').effect('highlight');
          },
          url: '/fantasy_seasons/3/sort_fantasy_teams'
        })
      }
    }
  );
});