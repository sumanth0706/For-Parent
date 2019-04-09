<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Juniper</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>-->
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/util.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/main.css">
<!--===============================================================================================-->
 <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style4.css">
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
		<div class="login100-more" style="background-image: url('${pageContext.request.contextPath}/assets/img/bg.jpg');"></div>
			
			<div class="wrap-login100 p-l-50 p-r-50 p-t-30 p-b-50">
				<form class="login100-form validate-form" action="${pageContext.request.contextPath}/login" method="POST">
					<span class="login100-form-title p-b-59">
						<center><img src="${pageContext.request.contextPath}/assets/img/juniper.jpg" style="width:50%;"></center>
					</span>
					<div class="wrap-input100 validate-input" data-validate="Username is required">
						<span class="label-input100">Username</span>
						<input class="input100" type="text" id="username" name="username" placeholder="Username...">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="password" id="password" name="password" placeholder="*************">
						<span class="focus-input100"></span>
					</div>
					<div class="mt-3" align="center">
                
                <%
							if (request.getAttribute("successString") != null) {
						%>
						<p class="text-success h4">${successString}</p>
						<%
							}
						%>
						<%
							if (request.getAttribute("errorString") != null) {
						%>
						<p class="text-danger h4">${errorString}</p>
						<%
							}
						%>


									<c:if
										test="${sessionScope[\"SPRING_SECURITY_LAST_EXCEPTION\"].message eq 'Bad credentials'}">
										<p class="text-danger h4">Username/Password entered is incorrect</p>
									</c:if>
									<c:if
										test="${sessionScope[\"SPRING_SECURITY_LAST_EXCEPTION\"].message eq 'User is disabled'}">
										<p class="text-danger h4">Your account is disabled, please contact administrator</p>
									</c:if>
									<c:if
										test="${fn:containsIgnoreCase(sessionScope[\"SPRING_SECURITY_LAST_EXCEPTION\"].message,'A communications error has been detected')}">
										<p class="text-danger h4">Connection is down, try after sometime</p>
									</c:if>


								</div>
					<div class="container-login100-form-btn" style="display:block;">
					<center><button type="submit" class="dis-block txt3 hov1" style="background:none;">
							Sign in
							<i class="fa fa-long-arrow-right m-l-5"></i>
						</button></center>
					</div></br></br></br>
					<div class="container-login100-form-btn" style="display:block;">
					<center><a href="/login/hipMS/register" class="dis-block txt3 hov1">
							Register Feeds
							<i class="fa fa-long-arrow-right m-l-5"></i>
						</a></center>
					</div></br></br>
<div class="container-login100-form-btn" style="display:block;">
					<center><a href="/login/hipMS/lineage" class="dis-block txt3 hov1">
							Lineage Dashboard
							<i class="fa fa-long-arrow-right m-l-5"></i>
						</a></center>
					</div></br></br>						
<div class="container-login100-form-btn" style="display:block;">
					<center><a href="/login/hipMS" class="dis-block txt3 hov1">
							HIP Dashboard
							<i class="fa fa-long-arrow-right m-l-5"></i>
						</a></center>
					</div></br></br>	
<div class="container-login100-form-btn" style="display:block;">
					<center><a href="/login/jloggerMS" class="dis-block txt3 hov1">
							JLogger
							<i class="fa fa-long-arrow-right m-l-5"></i>
						</a></center>
					</div>						
				</form>
			</div>
		</div>
	</div>

	 
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/assets/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/popper.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/assets/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/assets/vendor/daterangepicker/moment.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/assets/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

</body>
</html>