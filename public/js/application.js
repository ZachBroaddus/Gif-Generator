 $(document).ready(function() {
    $(".wrapper").on("submit", ".gif-keyword-form", function(event) {
    event.preventDefault();
    var $form = $(this);
    var actiony = $form.attr("action");
    var method = $form.attr("method");
    var data = $form.serialize()
    alert("The event listener is set up!");

    var ajaxRequest = $.ajax({
      url: actiony,
      method: method,
      data: data
    });

    ajaxRequest.done(function(response){
      console.log(response);
      console.log("Works OK")
      $form.closest("div").html(response)
    });

    ajaxRequest.fail(function(response){
      console.log(response);
      console.log("Def failed, dude.")
    });
   });
});
