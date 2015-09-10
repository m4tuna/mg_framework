$(window).scroll(function() {
  var scroll = $(window).scrollTop();

  if (scroll >= 500) {
    $(".header").addClass("scrollHeader");
  } else {
    $(".header").removeClass("scrollHeader");
  }
});
