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
  })

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
