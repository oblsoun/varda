<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
  <link rel="stylesheet" href="css/style_loginform.css" />
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
  <title>LoginForm</title>
  
</head>
<body>
  <div id ="wrap">
    <!--header부분-->
    <header class = "loginHeader">
      <div id = "logo">
        <a href = "localhost:8989/main/LoginMain">
          <img src="img/varda_header.png" alt="메인폼으로" width="300px" height="250px">
        </a>
      </div>
    </header>
    <div id="content">
      <div id="login_wrap">
        <form action="" id="id_pw_wrap" method="post">
          <div id="id_input_line">
            <span class="icon_id">
              <img src="img/login_id.png" id="icon" alt="로그인_id" width="15px" height="15px">
            </span>
            <input type="text" id="input_text" placeholder="ID" maxlength="30" autofocus="true" required>
          </div>
          <div id="pw_input_line">
            <span class="icon_pw">
              <img src="img/login_pw.png" id="icon" alt="로그인_pw" width="15px" height="15px">
            </span>
            <input type="text" id="input_text" placeholder="PASSWORD" maxlength="30" required>
          </div>
        </form>
      </div>
      <div class="btn-group">
        <a href="#"><button type="button" class="btn btn-success" id ="login_button">Login</button></a>
      </div>
      <hr>
        <div class="btn-group">
          <div>
          <a href="#"><button type="button" class="btn btn-warning" id="join_button">Join</button></a>
        </div></div>
      </div>
    </div>
  </div>

</body>
</html>