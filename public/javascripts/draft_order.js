$(document).ready(function() {
  var url = location.pathname.replace(/draft_order/g, 'update_draft_pick');
  
  fluid.inlineEdit.dropdown("#draft-pick-1", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=1&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-1').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-2", {
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function() {
        $.ajax({
          type: 'put',
          data: 'draft_pick=2&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-2').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-3", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=3&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-3').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-4", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=4&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-4').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-5", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=5&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-5').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-6", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=6&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-6').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-7", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=7&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-7').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-8", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=8&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-8').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-9", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=9&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-9').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-10", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=10&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-10').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-11", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=11&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-11').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-12", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=12&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-12').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-13", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=13&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-13').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-14", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=14&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-14').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-15", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=15&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-15').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-16", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=16&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-16').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-17", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=17&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-17').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-18", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=18&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-18').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-19", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=19&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-19').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-20", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=20&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-20').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-21", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=21&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-21').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-22", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=22&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-22').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-23", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=23&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-23').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-24", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=24&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-24').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-25", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=25&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-25').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-26", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=26&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-26').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-27", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=27&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-27').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-28", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=28&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-28').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-29", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=29&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-29').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-30", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=30&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-30').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-31", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=31&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-31').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-32", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=32&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-32').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-33", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=33&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-33').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-34", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=34&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-34').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-35", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=35&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-35').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-36", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=36&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-36').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-37", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=37&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-37').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-38", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=38&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-38').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-39", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=39&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-39').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-40", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=40&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-40').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-41", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=41&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-41').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-42", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=42&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-42').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-43", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=43&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-43').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-44", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=44&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-44').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-45", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=45&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-45').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-46", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=46&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-46').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-47", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=47&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-47').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-48", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=48&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-48').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-49", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=49&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-49').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-50", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=50&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-50').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-51", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=51&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-51').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-52", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=52&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-52').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-53", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=53&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-53').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-54", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=54&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-54').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-55", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=55&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-55').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-56", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=56&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-56').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-57", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=57&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-57').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-58", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=58&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-58').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-59", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=59&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-59').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-60", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=60&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-60').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-61", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=61&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-61').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-62", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=62&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-62').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-63", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=63&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-63').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-64", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=64&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-64').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-65", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=65&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-65').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-66", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=66&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-66').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-67", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=67&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-67').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-68", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=68&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-68').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-69", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=69&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-69').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-70", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=70&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-70').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-71", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=71&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-71').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-72", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=72&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-72').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-73", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=73&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-73').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-74", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=74&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-74').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-75", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=75&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-75').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-76", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=76&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-76').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-77", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=77&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-77').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-78", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=78&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-78').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-79", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=79&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-79').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-80", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=80&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-80').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-81", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=81&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-81').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-82", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=82&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-82').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-83", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=83&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-83').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-84", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=84&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-84').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-85", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=85&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-85').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-86", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=86&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-86').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-87", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=87&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-87').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-88", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=88&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-88').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-89", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=89&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-89').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-90", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=90&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-90').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-91", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=91&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-91').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-92", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=92&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-92').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-93", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=93&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-93').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-94", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=94&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-94').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-95", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=95&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-95').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-96", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=96&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-96').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-97", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=97&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-97').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-98", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=98&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-98').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-99", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=99&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-99').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-100", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=100&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-100').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-101", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=101&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-101').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-102", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=102&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-102').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-103", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=103&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-103').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-104", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=104&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-104').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-105", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=105&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-105').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-106", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=106&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-106').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-107", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=107&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-107').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-108", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=108&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-108').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-109", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=109&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-109').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-110", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=110&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-110').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-111", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=111&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-111').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-112", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=112&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-112').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-113", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=113&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-113').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-114", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=114&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-114').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-115", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=115&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-115').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-116", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=116&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-116').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-117", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=117&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-117').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-118", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=118&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-118').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-119", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=119&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-119').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-120", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=120&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-120').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-121", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=121&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-121').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-122", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=122&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-122').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-123", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=123&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-123').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-124", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=124&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-124').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-125", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=125&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-125').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-126", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=126&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-126').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-127", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=127&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-127').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-128", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=128&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-128').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-129", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=129&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-129').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-130", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=130&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-130').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-131", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=131&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-131').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-132", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=132&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-132').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-133", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=133&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-133').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-134", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=134&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-134').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-135", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=135&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-135').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-136", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=136&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-136').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-137", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=137&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-137').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-138", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=138&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-138').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-139", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=139&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-139').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-140", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=140&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-140').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-141", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=141&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-141').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-142", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=142&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-142').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-143", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=143&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-143').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-144", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=144&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-144').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-145", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=1454&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-145').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-146", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=146&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-146').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-147", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=147&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-147').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-148", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=148&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-148').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-149", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=149&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-149').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-150", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=150&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-150').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-151", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=151&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-151').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-152", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=152&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-152').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-153", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=153&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-153').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-154", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=154&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-154').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-155", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=155&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-155').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-156", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=156&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-156').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-157", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=157&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-157').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-158", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=158&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-158').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-159", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=159&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-159').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-160", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=160&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-160').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-161", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=161&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-161').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-162", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=162&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-162').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-163", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=163&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-163').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-164", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=164&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-164').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-165", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=165&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-165').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-166", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=166&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-166').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-167", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=167&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-167').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-168", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=168&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-168').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-169", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=169&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-169').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-170", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=170&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-170').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-171", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=171&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-171').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-172", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=172&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-172').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-173", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=173&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-173').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-174", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=174&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-174').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-175", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=175&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-175').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-176", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=176&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-176').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-177", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=177&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-177').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-178", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=178&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-178').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-179", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=179&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-179').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-180", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=180&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-180').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-181", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=181&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-181').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-182", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=182&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-182').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-183", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=183&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-183').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-184", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=184&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-184').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-185", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=185&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-185').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-186", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=186&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-186').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-187", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=187&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-187').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-188", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=188&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-188').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-189", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=189&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-189').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-190", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=190&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-190').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-191", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=191&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-191').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-192", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=192&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-192').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-193", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=193&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-193').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-194", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=194&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-194').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-195", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=195&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-195').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-196", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=196&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-196').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-197", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=197&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-197').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-198", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=198&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-198').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-199", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=199&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-199').effect('highlight');
          },
          url: url
        })
      }
    }
  });
  fluid.inlineEdit.dropdown("#draft-pick-200", { 
    useTooltip : true, 
    tooltipDelay : 500, 
    listeners: { 
      afterFinishEdit: function(newValue, oldValue, viewNode) {
        $.ajax({
          type: 'put',
          data: 'draft_pick=200&new_value=' + newValue + '&old_value=' + oldValue,
          dataType: 'script',
          complete: function(request){
            $('#draft-pick-200').effect('highlight');
          },
          url: url
        })
      }
    }
  });
});