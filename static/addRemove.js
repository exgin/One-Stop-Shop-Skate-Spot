jQuery(document).ready(function ($) {
  let alterClass = function () {
    let ww = document.body.clientWidth;
    if (ww < 750) {
      $('.park-div').addClass('embed-responsive embed-responsive-16by9');
    } else if (ww >= 751) {
      $('.park-div').removeClass('embed-responsive embed-responsive-16by9');
    }
  };
  $(window).resize(function () {
    alterClass();
  });
  // Fire it when the page first loads:
  alterClass();
});
