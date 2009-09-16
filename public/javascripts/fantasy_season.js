$(document).ready(function() {
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