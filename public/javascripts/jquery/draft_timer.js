$(document).ready(function() {
  $(function(){
    $('#epiClock').epiclock({mode: EC_STOPWATCH, format: "i:s"}, "retro");   // Creates a text clock displaying local time
    $.epiclock();                // Starts all the clocks you've created
  });
  
  $('table#table_example tbody tr').quicksearch({
    position: 'before',
    attached: '#liveSearch',
    stripeRowClass: ['odd', 'even'],
    labelText: '',
    delay: 100
  });
});