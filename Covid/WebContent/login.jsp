<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="main.jsp">COVID-19</a>

  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="main.jsp">메인</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="post.jsp">게시판</a>
    </li>

    <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        접속하기
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="login.jsp">로그인</a>
        <a class="dropdown-item" href="join.jsp">회원가입</a>
      </div>
    </li>
  </ul>
</nav>
<!-- 로그인 양식 -->
<div class="container">
	<div class="col=lg-4">
		<div class="jumbotron" style="padding-top:20px;">
			<form method="post" action="loginAction.jsp" class="was-validated">
  				<div class="form-group">
    				<label for="id">ID:</label>
    				<input type="text" class="form-control" id="id" placeholder="Enter id" name="id" maxlength="20" required>
    				<div class="valid-feedback">입력완료</div>
    				<div class="invalid-feedback">사용자 아이디를 입력하세요.</div>
  				</div>
  				<div class="form-group">
    				<label for="pwd">Password:</label>
    				<input type="password" class="form-control" id="pw" placeholder="Enter password" name="pw" maxlength="20" required>
    				<div class="valid-feedback">입력완료</div>
    				<div class="invalid-feedback">사용자 비밀번호를 입력하세요.</div>
  				</div>
  				<input type="submit" class="btn btn-primary form-control" value="로그인">
			</form>
		</div>
	</div>
</div>
</body>
</html>