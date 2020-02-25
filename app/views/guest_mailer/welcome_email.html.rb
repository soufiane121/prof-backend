<!DOCTYPE html>
<html>
  <head>
    <meta content='text/html; charset=UTF-8' http-equiv='Content-Type' />
  </head>
  <body>
    <h5> First name <%=@user.first_name%> </h5>
    <p>
      Your content is  <%= @user.message %>.<br>
    </p>
    <p>Thanks for joining and have a great day!</p>
  </body>
</html>