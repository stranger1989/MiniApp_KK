$(function() {
  $('.sidenav').sidenav();

  $(window).on('scroll',function(){
      winScrollTop = $(this).scrollTop();
      if (winScrollTop >= 200) {
          $('.header').addClass('hide');
      } else {
          $('.header').removeClass('hide');
      }
      startPos = winScrollTop;
  });

  $(".scrollToTop").click(function() {
    $('body, html').animate({scrollTop: 0}, 300, 'linear');
  });
  var changeButtonState = function() {
    var $toTopButton = $('.scrollToTop');
    var scrollTop = $(window).scrollTop();
    var windowHeight = $(window).height();

    if (scrollTop >= windowHeight
        || ($(document).height() - windowHeight) <= scrollTop) {
      $toTopButton.show();
    } else {
      $toTopButton.hide();
    }
  }
  $(window).scroll(changeButtonState)
           .load(changeButtonState)
           .resize(changeButtonState);

});


