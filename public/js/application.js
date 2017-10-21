// $(document).ready(function() {
//   // This is called after the document has loaded in its entirety
//   // This guarantees that any elements we bind to will exist on the page
//   // when we try to bind to them

//   // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

//   $(".post-container").on("submit", ".inline-vote-form-upvote", function(event) {
//     event.preventDefault();
//     var $form = $(".inline-vote-form-upvote");
//     var actiony = $form.attr("action");
//     var ajaxRequest = $.ajax({url: actiony, method: 'POST'});
//     ajaxRequest.done(function(response){
//       $form.closest("article").find(".points").text(response);
//       $form.find(".upvote-button").css("color", "#8c4331");
//     });


//   $(".post-container").on("submit", ".inline-vote-form-downvote", function(event) {
//     event.preventDefault();
//     var $form = $(".inline-vote-form-downvote");
//     var actiony = $form.attr("action");
//     var ajaxRequest = $.ajax({url: actiony, method: 'DELETE'});
//     ajaxRequest.done(function(response){
//       $form.closest("article").find(".points").text(response);
//       $form.find(".downvote-button").css("color", "#8c4331");
//     });
//   });

$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

  $(".post-container").on("submit", ".inline-vote-form-upvote", function(event) {
    event.preventDefault();
    var $form = $(".inline-vote-form-upvote");
    var actiony = $form.attr("action");
    var ajaxRequest = $.ajax({url: actiony, method: 'POST'});
    ajaxRequest.done(function(response){
      $form.closest("article").find(".points").text(response);
      $form.find(".upvote-button").css("color", "#8c4331");
    });


  $(".post-container").on("submit", ".inline-vote-form-downvote", function(event) {
    event.preventDefault();
    var $form = $(".inline-vote-form-downvote");
    var actiony = $form.attr("action");
    var ajaxRequest = $.ajax({url: actiony, method: 'DELETE'});
    ajaxRequest.done(function(response){
      $form.closest("article").find(".points").text(response);
      $form.find(".downvote-button").css("color", "#8c4331");
    });
  });
  });
});
