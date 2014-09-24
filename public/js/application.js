$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

  $("input[name=luvbtn]").click(function() {
    console.log("hello")
    $.ajax({
      url: '/luv/' + $("input[name=luv_id]").val(),
      data: {ajax: true},
      dataType: "json"
    }).done(function(response) {
      $('#luv-list').prepend('<h2>' + response['title'] + '</h2>')
    })
  });

  delete_form_handler = function(event) {
    event.preventDefault();

    $target = $(event.target);
    $btn = $target.find('input[type=submit]');
    $btn.val("Deleting...");

    $.ajax({
      url: $target.attr("action"),
      type: "DELETE"
    }).done(function() {
      $target.parent().remove();
    }).fail(function() {
      $btn.val("Failed, please try again.")
    });
  }

  //$("#luv-list").on("submit", "form.delete_form", delete_form_handler);

  $("form.delete_form").submit(delete_form_handler);

  $("form[name=luv]").submit(function(event) {
    event.preventDefault();
    console.log($(this).serialize());
    $.post('/luv', 
      $(this).serialize(),
      function(data) {
        $('#luv-list').prepend(data);
      }
    );
    $(this)[0].reset();
  });
});
