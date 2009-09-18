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
  fluid.inlineEdit.dropdown("#draft-pick-25");
  fluid.inlineEdit.dropdown("#draft-pick-26");
  fluid.inlineEdit.dropdown("#draft-pick-27");
  fluid.inlineEdit.dropdown("#draft-pick-28");
  fluid.inlineEdit.dropdown("#draft-pick-29");
  fluid.inlineEdit.dropdown("#draft-pick-30");
  fluid.inlineEdit.dropdown("#draft-pick-31");
  fluid.inlineEdit.dropdown("#draft-pick-32");
  fluid.inlineEdit.dropdown("#draft-pick-33");
  fluid.inlineEdit.dropdown("#draft-pick-34");
  fluid.inlineEdit.dropdown("#draft-pick-35");
  fluid.inlineEdit.dropdown("#draft-pick-36");
  fluid.inlineEdit.dropdown("#draft-pick-37");
  fluid.inlineEdit.dropdown("#draft-pick-38");
  fluid.inlineEdit.dropdown("#draft-pick-39");
  fluid.inlineEdit.dropdown("#draft-pick-40");
  fluid.inlineEdit.dropdown("#draft-pick-41");
  fluid.inlineEdit.dropdown("#draft-pick-42");
  fluid.inlineEdit.dropdown("#draft-pick-43");
  fluid.inlineEdit.dropdown("#draft-pick-44");
  fluid.inlineEdit.dropdown("#draft-pick-45");
  fluid.inlineEdit.dropdown("#draft-pick-46");
  fluid.inlineEdit.dropdown("#draft-pick-47");
  fluid.inlineEdit.dropdown("#draft-pick-48");
  fluid.inlineEdit.dropdown("#draft-pick-49");
  fluid.inlineEdit.dropdown("#draft-pick-50");
  fluid.inlineEdit.dropdown("#draft-pick-51");
  fluid.inlineEdit.dropdown("#draft-pick-52");
  fluid.inlineEdit.dropdown("#draft-pick-53");
  fluid.inlineEdit.dropdown("#draft-pick-54");
  fluid.inlineEdit.dropdown("#draft-pick-55");
  fluid.inlineEdit.dropdown("#draft-pick-56");
  fluid.inlineEdit.dropdown("#draft-pick-57");
  fluid.inlineEdit.dropdown("#draft-pick-58");
  fluid.inlineEdit.dropdown("#draft-pick-59");
  fluid.inlineEdit.dropdown("#draft-pick-60");
  fluid.inlineEdit.dropdown("#draft-pick-61");
  fluid.inlineEdit.dropdown("#draft-pick-62");
  fluid.inlineEdit.dropdown("#draft-pick-63");
  fluid.inlineEdit.dropdown("#draft-pick-64");
  fluid.inlineEdit.dropdown("#draft-pick-65");
  fluid.inlineEdit.dropdown("#draft-pick-66");
  fluid.inlineEdit.dropdown("#draft-pick-67");
  fluid.inlineEdit.dropdown("#draft-pick-68");
  fluid.inlineEdit.dropdown("#draft-pick-69");
  fluid.inlineEdit.dropdown("#draft-pick-70");
  fluid.inlineEdit.dropdown("#draft-pick-71");
  fluid.inlineEdit.dropdown("#draft-pick-72");
  fluid.inlineEdit.dropdown("#draft-pick-73");
  fluid.inlineEdit.dropdown("#draft-pick-74");
  fluid.inlineEdit.dropdown("#draft-pick-75");
  fluid.inlineEdit.dropdown("#draft-pick-76");
  fluid.inlineEdit.dropdown("#draft-pick-77");
  fluid.inlineEdit.dropdown("#draft-pick-78");
  fluid.inlineEdit.dropdown("#draft-pick-79");
  fluid.inlineEdit.dropdown("#draft-pick-80");
  fluid.inlineEdit.dropdown("#draft-pick-81");
  fluid.inlineEdit.dropdown("#draft-pick-82");
  fluid.inlineEdit.dropdown("#draft-pick-83");
  fluid.inlineEdit.dropdown("#draft-pick-84");
  fluid.inlineEdit.dropdown("#draft-pick-85");
  fluid.inlineEdit.dropdown("#draft-pick-86");
  fluid.inlineEdit.dropdown("#draft-pick-87");
  fluid.inlineEdit.dropdown("#draft-pick-88");
  fluid.inlineEdit.dropdown("#draft-pick-89");
  fluid.inlineEdit.dropdown("#draft-pick-90");
  fluid.inlineEdit.dropdown("#draft-pick-91");
  fluid.inlineEdit.dropdown("#draft-pick-92");
  fluid.inlineEdit.dropdown("#draft-pick-93");
  fluid.inlineEdit.dropdown("#draft-pick-94");
  fluid.inlineEdit.dropdown("#draft-pick-95");
  fluid.inlineEdit.dropdown("#draft-pick-96");
  fluid.inlineEdit.dropdown("#draft-pick-97");
  fluid.inlineEdit.dropdown("#draft-pick-98");
  fluid.inlineEdit.dropdown("#draft-pick-99");
  fluid.inlineEdit.dropdown("#draft-pick-100");
  fluid.inlineEdit.dropdown("#draft-pick-101");
  fluid.inlineEdit.dropdown("#draft-pick-102");
  fluid.inlineEdit.dropdown("#draft-pick-103");
  fluid.inlineEdit.dropdown("#draft-pick-104");
  fluid.inlineEdit.dropdown("#draft-pick-105");
  fluid.inlineEdit.dropdown("#draft-pick-106");
  fluid.inlineEdit.dropdown("#draft-pick-107");
  fluid.inlineEdit.dropdown("#draft-pick-108");
  fluid.inlineEdit.dropdown("#draft-pick-109");
  fluid.inlineEdit.dropdown("#draft-pick-110");
  fluid.inlineEdit.dropdown("#draft-pick-111");
  fluid.inlineEdit.dropdown("#draft-pick-112");
  fluid.inlineEdit.dropdown("#draft-pick-113");
  fluid.inlineEdit.dropdown("#draft-pick-114");
  fluid.inlineEdit.dropdown("#draft-pick-115");
  fluid.inlineEdit.dropdown("#draft-pick-116");
  fluid.inlineEdit.dropdown("#draft-pick-117");
  fluid.inlineEdit.dropdown("#draft-pick-118");
  fluid.inlineEdit.dropdown("#draft-pick-119");
  fluid.inlineEdit.dropdown("#draft-pick-120");
  fluid.inlineEdit.dropdown("#draft-pick-121");
  fluid.inlineEdit.dropdown("#draft-pick-122");
  fluid.inlineEdit.dropdown("#draft-pick-123");
  fluid.inlineEdit.dropdown("#draft-pick-124");
  fluid.inlineEdit.dropdown("#draft-pick-125");
  fluid.inlineEdit.dropdown("#draft-pick-126");
  fluid.inlineEdit.dropdown("#draft-pick-127");
  fluid.inlineEdit.dropdown("#draft-pick-128");
  fluid.inlineEdit.dropdown("#draft-pick-129");
  fluid.inlineEdit.dropdown("#draft-pick-130");
  fluid.inlineEdit.dropdown("#draft-pick-131");
  fluid.inlineEdit.dropdown("#draft-pick-132");
  fluid.inlineEdit.dropdown("#draft-pick-133");
  fluid.inlineEdit.dropdown("#draft-pick-134");
  fluid.inlineEdit.dropdown("#draft-pick-135");
  fluid.inlineEdit.dropdown("#draft-pick-136");
  fluid.inlineEdit.dropdown("#draft-pick-137");
  fluid.inlineEdit.dropdown("#draft-pick-138");
  fluid.inlineEdit.dropdown("#draft-pick-139");
  fluid.inlineEdit.dropdown("#draft-pick-140");
  fluid.inlineEdit.dropdown("#draft-pick-141");
  fluid.inlineEdit.dropdown("#draft-pick-142");
  fluid.inlineEdit.dropdown("#draft-pick-143");
  fluid.inlineEdit.dropdown("#draft-pick-144");
  fluid.inlineEdit.dropdown("#draft-pick-145");
  fluid.inlineEdit.dropdown("#draft-pick-146");
  fluid.inlineEdit.dropdown("#draft-pick-147");
  fluid.inlineEdit.dropdown("#draft-pick-148");
  fluid.inlineEdit.dropdown("#draft-pick-149");
  fluid.inlineEdit.dropdown("#draft-pick-150");
  fluid.inlineEdit.dropdown("#draft-pick-151");
  fluid.inlineEdit.dropdown("#draft-pick-152");
  fluid.inlineEdit.dropdown("#draft-pick-153");
  fluid.inlineEdit.dropdown("#draft-pick-154");
  fluid.inlineEdit.dropdown("#draft-pick-155");
  fluid.inlineEdit.dropdown("#draft-pick-156");
  fluid.inlineEdit.dropdown("#draft-pick-157");
  fluid.inlineEdit.dropdown("#draft-pick-158");
  fluid.inlineEdit.dropdown("#draft-pick-159");
  fluid.inlineEdit.dropdown("#draft-pick-160");
  fluid.inlineEdit.dropdown("#draft-pick-161");
  fluid.inlineEdit.dropdown("#draft-pick-162");
  fluid.inlineEdit.dropdown("#draft-pick-163");
  fluid.inlineEdit.dropdown("#draft-pick-164");
  fluid.inlineEdit.dropdown("#draft-pick-165");
  fluid.inlineEdit.dropdown("#draft-pick-166");
  fluid.inlineEdit.dropdown("#draft-pick-167");
  fluid.inlineEdit.dropdown("#draft-pick-168");
  fluid.inlineEdit.dropdown("#draft-pick-169");
  fluid.inlineEdit.dropdown("#draft-pick-170");
  fluid.inlineEdit.dropdown("#draft-pick-171");
  fluid.inlineEdit.dropdown("#draft-pick-172");
  fluid.inlineEdit.dropdown("#draft-pick-173");
  fluid.inlineEdit.dropdown("#draft-pick-174");
  fluid.inlineEdit.dropdown("#draft-pick-175");
  fluid.inlineEdit.dropdown("#draft-pick-176");
  fluid.inlineEdit.dropdown("#draft-pick-177");
  fluid.inlineEdit.dropdown("#draft-pick-178");
  fluid.inlineEdit.dropdown("#draft-pick-179");
  fluid.inlineEdit.dropdown("#draft-pick-180");
  fluid.inlineEdit.dropdown("#draft-pick-181");
  fluid.inlineEdit.dropdown("#draft-pick-182");
  fluid.inlineEdit.dropdown("#draft-pick-183");
  fluid.inlineEdit.dropdown("#draft-pick-184");
  fluid.inlineEdit.dropdown("#draft-pick-185");
  fluid.inlineEdit.dropdown("#draft-pick-186");
  fluid.inlineEdit.dropdown("#draft-pick-187");
  fluid.inlineEdit.dropdown("#draft-pick-188");
  fluid.inlineEdit.dropdown("#draft-pick-189");
  fluid.inlineEdit.dropdown("#draft-pick-190");
  fluid.inlineEdit.dropdown("#draft-pick-191");
  fluid.inlineEdit.dropdown("#draft-pick-192");
  fluid.inlineEdit.dropdown("#draft-pick-193");
  fluid.inlineEdit.dropdown("#draft-pick-194");
  fluid.inlineEdit.dropdown("#draft-pick-195");
  fluid.inlineEdit.dropdown("#draft-pick-196");
  fluid.inlineEdit.dropdown("#draft-pick-197");
  fluid.inlineEdit.dropdown("#draft-pick-198");
  fluid.inlineEdit.dropdown("#draft-pick-199");
  fluid.inlineEdit.dropdown("#draft-pick-200");
});