<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8"/>
<title>Login</title>
<link href="../../static/etc/css/login.css" rel="stylesheet" type="text/css"/>
</head>
<body onload="document.username.focus();">
	<div class="container">
		<section id="content">
			<form action="${ctx}/login" method="POST" class="form-horizontal">
				<h1>登录窗口</h1>
				<div>
					<input type="text" placeholder="Enter Any Username" name="username" id="username" />
				</div>
				<div>
					<input type="password" placeholder="Enter Any Password" name="password" id="password" />
				</div>
				<div>
					<input type="submit" value="登录" />
				</div>
			</form>
			<div class="button">
			</div>
		</section>
	</div>
</body>
</html>