

<%@ page language="java"  session="true" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="es">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="_csrf" content='${_csrf.token}' />
<meta name="_csrf_header" content='${_csrf.headerName}' />

<!-- Plugin y estilos -->


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="msapplication-tap-highlight" content="no">
<meta name="description"
	content="Materialize is a Material Design Admin Template,It's modern, responsive and based on Material Design by Google. ">
<meta name="keywords"
	content="materialize, admin template, dashboard template, flat admin template, responsive admin template,">
<title>Login Page | Materialize - Material Design Admin Template</title>

<!-- Favicons-->
<link rel="icon"
	href="<c:url value='resources/plugin/images/favicon/favicon-32x32.png'/>"
	sizes="32x32" />
<!-- Favicons-->
<link rel="apple-touch-icon-precomposed"
	href="<c:url value='resources/plugin/images/favicon/apple-touch-icon-152x152.png'/>" />
<!-- For iPhone -->
<meta name="msapplication-TileColor" content="#00bcd4">
<meta name="msapplication-TileImage"
	content="<c:url value='resources/plugin/images/favicon/mstile-144x144.png'/>" />
<!-- For Windows Phone -->


<!-- CORE CSS-->

<link href="<c:url value='resources/plugin/css/materialize.min.css'/>"
	type="text/css" rel="stylesheet" media="screen,projection">
<link href="<c:url value='resources/plugin/css/style.min.css'/>"
	type="text/css" rel="stylesheet" media="screen,projection">
<!-- Custome CSS-->
<link href="<c:url value='resources/plugin/css/custom/custom.min.css'/>"
	type="text/css" rel="stylesheet" media="screen,projection">
<link
	href="<c:url value='resources/plugin/css/layouts/page-center.css'/>"
	type="text/css" rel="stylesheet" media="screen,projection">

<!-- INCLUDED PLUGIN CSS ON THIS PAGE -->
<link
	href="<c:url value='resources/plugin/js/plugins/prism/prism.css'/>"
	type="text/css" rel="stylesheet" media="screen,projection">
<link
	href="<c:url value='resources/plugin/js/plugins/perfect-scrollbar/perfect-scrollbar.css'/>"
	type="text/css" rel="stylesheet" media="screen,projection" />
<script>
var gth_context_path = "<%=request.getContextPath()%>";
	function setUrlPath(url) {
		var s = gth_context_path + url;
		return s;
	}
</script>

</head>

<body class="cyan">
	<!-- Start Page Loading -->
	<div id="loader-wrapper">
		<div id="loader"></div>
		<div class="loader-section section-left"></div>
		<div class="loader-section section-right"></div>
	</div>
	<!-- End Page Loading -->



	<div id="login-page" class="row">
		<div class="col s12 z-depth-4 card-panel">
			<form class="login-form" action="login" method="POST">
			
				<div class="row">
					<div class="input-field col s12 center">
						<img src="<c:url value='resources/imagenes/icono.png'/>" alt=""
							class="circle responsive-img valign profile-image-login" />
						<p class="center login-form-text">Sistema de Planillas</p>
					</div>
				</div>
				<div class="row margin">
					<div class="input-field col s12">
						<i class="mdi-social-person-outline prefix"></i> <input
							id="username" type="text"> <label for="username"
							class="center-align">Usuario</label>
					</div>
				</div>
				<div class="row margin">
					<div class="input-field col s12">
						<i class="mdi-action-lock-outline prefix"></i> <input
							id="password" type="password"> <label for="password">Password</label>
					</div>
				</div>
				<div class="row">
					<div class="input-field col s12 m12 l12  login-text">
						<input type="checkbox" id="remember-me" /> <label
							for="remember-me">Remember me</label>
					</div>
				</div>
				
				<div class="row margin">
					<div class="input-field col s12">
						<c:if test="${not empty error}">
							<div id="card-alert" class="card red lighten-5">
								<div class="card-content red-text">
									<p>${error}</p>
								</div>
								<button type="button" class="close red-text"
									data-dismiss="alert" aria-label="Close">
									<span aria-hidden="true">×</span>
								</button>
							</div>
						</c:if>
						<c:if test="${not empty msg}">
							<div id="card-alert" class="card grey">
								<div class="card-content white-text thin">
									<p>${msg}</p>
								</div>
								<button type="button" class="close white-text"
									data-dismiss="alert" aria-label="Close">
									<span aria-hidden="true">×</span>
								</button>
							</div>
						</c:if>
					</div>
				</div>
				<div class="row">
					<div class="input-field col s12">
						<button type="submit"
							class="btn waves-effect waves-light col s12 green accent-3">Ingresar</button>
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					</div>
				</div>
			</form>
			

		</div>
	</div>



	<!-- ================================================
    Scripts
    ================================================ -->

	<!-- jQuery Library -->
	<script type="text/javascript"
		src="<c:url value='resources/plugin/js/plugins/jquery-1.11.2.min.js'/>"></script>
	<!--materialize js-->
	<script type="text/javascript"
		src="<c:url value='resources/plugin/js/materialize.min.js'/>"></script>
	<!--prism-->
	<script type="text/javascript"
		src="<c:url value='resources/plugin/js/plugins/prism/prism.js'/>"></script>
	<!--scrollbar-->
	<script type="text/javascript"
		src="<c:url value='resources/plugin/js/plugins/perfect-scrollbar/perfect-scrollbar.min.js'/>"></script>

	<!--plugins.js - Some Specific JS codes for Plugin Settings-->
	<script type="text/javascript"
		src="<c:url value='resources/plugin/js/plugins.min.js'/>"></script>
	<!--custom-script.js - Add your own theme custom JS-->
	<script type="text/javascript"
		src="<c:url value='resources/plugin/js/custom-script.js'/>"></script>

</body>


</html>