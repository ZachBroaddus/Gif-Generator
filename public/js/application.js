 $(document).ready(function() {
    $(".wrapper").on("submit", ".gif-keyword-form", function(event) {
    event.preventDefault();
    var $form = $(this);
    var actiony = $form.attr("action");
    var method = $form.attr("method");
    var data = $form.serialize()

    var ajaxRequest = $.ajax({
      url: actiony,
      method: method,
      data: data
    });

    ajaxRequest.done(function(response){
      console.log(response);
      $form.closest("div").html(response)
    });
   });
});
