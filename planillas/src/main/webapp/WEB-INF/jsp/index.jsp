<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="es">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- CSS -->
<%@include file="../../jspf/header.jspf"%>
</head>
<body>
<body>
	<!-- Start Page Loading -->
	<div id="loader-wrapper">
		<div id="loader"></div>
		<div class="loader-section section-left"></div>
		<div class="loader-section section-right"></div>
	</div>
	<!-- End Page Loading -->

	<!-- START HEADER -->
	<header id="header" class="page-topbar"> <!-- start header nav-->
	<div class="navbar-fixed">
		<nav class="navbar-color">
		<div class="nav-wrapper">
			<ul class="left">
				<li><h1 class="logo-wrapper">
						<a href="#" class="brand-logo darken-1"><img
							src="<c:url value='resources/plugin/images/materialize-logo.png'/>"
							alt="materialize logo"></a> <span class="logo-text">Planillas</span>
					</h1></li>
			</ul>
			<div class="header-search-wrapper hide-on-med-and-down">
				<i class="mdi-action-search"></i> <input type="text" name="Search"
					class="header-search-input z-depth-2"
					placeholder="Explore Materialize" />
			</div>
			<ul class="right hide-on-med-and-down">

				<li><a href="javascript:void(0);"
					class="waves-effect waves-block waves-light toggle-fullscreen"><i
						class="mdi-action-settings-overscan"></i></a></li>
				<li><a href="javascript:void(0);"
					class="waves-effect waves-block waves-light notification-button"
					data-activates="notifications-dropdown"><i
						class="mdi-social-notifications"><small
							class="notification-badge">5</small></i> </a></li>
				<li><a href="#" data-activates="chat-out"
					class="waves-effect waves-block waves-light chat-collapse"><i
						class="mdi-communication-chat"></i></a></li>
			</ul>
			<!-- notifications-dropdown -->
			<ul id="notifications-dropdown" class="dropdown-content">
				<li>
					<h5>
						NOTIFICATIONS <span class="new badge">2</span>
					</h5>
				</li>
				<li class="divider"></li>
				<li><a href="#!"><i class="mdi-action-add-shopping-cart"></i>
						A new order has been placed!</a> <time class="media-meta"
						datetime="2015-06-12T20:50:48+08:00">2 hours ago</time></li>
				<li><a href="#!"><i class="mdi-action-stars"></i> Completed
						the task</a> <time class="media-meta"
						datetime="2015-06-12T20:50:48+08:00">3 days ago</time></li>
				<li><a href="#!"><i class="mdi-action-settings"></i>
						Settings updated</a> <time class="media-meta"
						datetime="2015-06-12T20:50:48+08:00">4 days ago</time></li>
				<li><a href="#!"><i class="mdi-editor-insert-invitation"></i>
						Director meeting started</a> <time class="media-meta"
						datetime="2015-06-12T20:50:48+08:00">6 days ago</time></li>
				<li><a href="#!"><i class="mdi-action-trending-up"></i>
						Generate monthly report</a> <time class="media-meta"
						datetime="2015-06-12T20:50:48+08:00">1 week ago</time></li>
			</ul>
		</div>
		</nav>
	</div>
	<!-- end header nav--> </header>
	<!-- END HEADER -->

	<!-- //////////////////////////////////////////////////////////////////////////// -->

	<!-- START MAIN -->
	<div id="main">
		<!-- START WRAPPER -->
		<div class="wrapper">

			<!-- START LEFT SIDEBAR NAV-->

			<%@include file="../../jspf/nav.jspf"%>


			<!-- END LEFT SIDEBAR NAV-->

			<!-- //////////////////////////////////////////////////////////////////////////// -->

			<!-- START CONTENT -->
			<section id="content"> <!--breadcrumbs start-->
			<div id="breadcrumbs-wrapper">
				<!-- Search for small screen -->
				<div class="header-search-wrapper grey hide-on-large-only">
					<i class="mdi-action-search active"></i> <input type="text"
						name="Search" class="header-search-input z-depth-2"
						placeholder="Explore Materialize">
				</div>
				<div class="container">
					<div class="row">
						<div class="col s12 m12 l12">
							<h5 class="breadcrumbs-title">Hola</h5>
							<ol class="breadcrumbs">
								<li><a href="index.html">Dashboard</a></li>
								<li><a href="#">CSS</a></li>
								<li class="active">Grid</li>
							</ol>
						</div>
					</div>
				</div>
			</div>

			<!-- //////////////////////////////////////////////////////////////////////////// -->

			<!--start container-->
			<div class="container" id="Contenido">

				<h1>Hola mundo Papu</h1>

			</div>

			<!-- //////////////////////////////////////////////////////////////////////////// -->

			<!--end container--> </section>
		</div>
	</div>


	<%@include file="../../jspf/footer.jspf"%>
	<!-- ================================================
    Scripts
    ================================================ -->
	<%@include file="../../jspf/general.jspf"%>
</body>
</html>