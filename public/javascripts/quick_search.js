$(document).ready(function() {
  $('table#draft_table tbody tr').quicksearch({
    position: 'before',
    attached: '#liveSearch',
    stripeRowClass: ['odd', 'even'],
    labelText: '',
    delay: 100
  });
});