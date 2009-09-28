$(document).ready(function() {
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