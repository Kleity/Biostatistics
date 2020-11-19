(function($){
  $(function(){
    $(document).ready(function(){
      $('.target').pushpin({
        top: 0,
        bottom: 1000,
        offset: 0
      });
    });

    // Pushpin Demo Init
    $('.pushpin-demo-nav').each(function() {
    var $this = $(this);
    var $target = $('#' + $(this).attr('data-target'));
    $this.pushpin({
      top: $target.offset().top,
      bottom: $target.offset().top + $target.outerHeight() - $this.height()
    });
  });


  }); // end of document ready
})(jQuery); // end of jQuery name space
