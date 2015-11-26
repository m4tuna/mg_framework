$( document ).ready(function() {



  $('.nav-toggle').click(function() {
    $('nav').slideToggle();
    console.log('hyello?');
  });


  var grid = document.querySelector('#grid');
  var item = document.createElement('article');

  salvattore.appendElements(grid, [item]);
  item.outerHTML = 'I’ve been appended!';


});
