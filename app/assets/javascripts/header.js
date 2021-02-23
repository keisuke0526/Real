$(document).on('turbolinks:load', () => {
  (function ($) {
    var $body = $('#nav-area');
    var $btn = $('.toggle_btn');
    var $mask = $('#mask');
    var open = 'open';

    $btn.on('click', function () {
      if (!$body.hasClass(open)) {
        $body.addClass(open);
      } else {
        $body.removeClass(open);
      }
    });

    $mask.on('click', function () {
      $body.removeClass(open);
    });
  })(jQuery);
});
