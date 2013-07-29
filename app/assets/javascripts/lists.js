// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(function(){

  function print_lists(data) {
    console.log("Lists.json");
    console.log(data);
    var lists_container = $(".lists");
    _(data).each( function(list){
    console.log(list);
      lists_container.append('<div class="single_list"><div class="list_header"><h2>'+list.name+'</h2></div><ul id="sortable" class="list_items">');
      if (list.items.length > 0) {
        _(list.items).each( function (item){
          console.log(item);
        lists_container.append('<li class="ui-state-default">'+item.name+'</li>');
        });
      }
      lists_container.append('<li class="ui-state-default">Test</li>');
      lists_container.append('<li class="ui-state-default">Add item</li>');
      lists_container.append('</ul></div>');

    });
  $( "#sortable" ).each(function() {
    $(this).sortable();
  });
  $( "#sortable" ).disableSelection();


  };

  $.getJSON('http://localhost:3000/lists.json', print_lists)


});

