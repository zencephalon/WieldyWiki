$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
  $("form[name=luv]").submit(function() {
    console.log($(this).serialize());
    $.post('/luv', 
      $(this).serialize(),
      function(data) {
        $('#luv-list').prepend(data);
      }
    );
    $(this)[0].reset();
    return false;
  });
});
