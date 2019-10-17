$(function() {
  $("#user-search-field").on("keyup", function() {
    var input = $("#user-search-field").val();
  console.log(input)
  $.ajax({
      type: 'GET',
      url: '/users',
      data: { keyword: input },
      dataType: 'json'
    })
  
    .done(function(users) {
      $("#user-search-field").empty();
      if (users.length !== 0) {
        users.forEach(function(user){
          appendUser(user);
        });
      }
      else {
        appendErrMsgToHTML();
      }
    })
  });
});


