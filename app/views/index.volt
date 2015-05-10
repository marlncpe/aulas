<!DOCTYPE html>
<html>
	<head>
		{{ get_title() }}
		{{ stylesheet_link('vendors/fullcalendar/fullcalendar.css') }}
        {{ stylesheet_link('vendors/animate-css/animate.min.css') }}
        {{ stylesheet_link('vendors/sweet-alert/sweet-alert.min.css') }}
        {{ stylesheet_link('css/app.min.css') }}
	</head>
	    <body>
        <header id="header">
            <ul class="header-inner">
                <li id="menu-trigger" data-trigger="#sidebar">
                    <div class="line-wrap">
                        <div class="line top"></div>
                        <div class="line center"></div>
                        <div class="line bottom"></div>
                    </div>
                </li>
            
                <li class="logo hidden-xs">
                    <a href="index.html">SISTEMA DE SOLICITUD DE AULAS VIRTUALES UNELLEZ</a>
                </li>
                
                <li class="pull-right">
                <ul class="top-menu">
                    <li id="toggle-width">
                        <div class="toggle-switch">
                            <input id="tw-switch" type="checkbox" hidden="hidden">
                            <label for="tw-switch" class="ts-helper"></label>
                        </div>
                    </li>
                    <li id="top-search">
                        <a class="tm-search" href=""></a>
                    </li>
                  
                </ul>

            
            <!-- Top Search Content -->
            <div id="top-search-wrap">
                <input type="text">
                <i id="top-search-close">&times;</i>
            </div>
        </header>
        
        
        <section id="main">
            <aside id="sidebar">
                <div class="sidebar-inner">
                    <div class="si-inner">
                        <div class="profile-menu">
                            <a href="">
                                <div class="profile-pic">
                                    <img src="img/profile-pics/1.jpg" alt="">
                                </div>
                                
                                <div class="profile-info">
                                    Malinda Hollaway
                                    
                                    <i class="md md-arrow-drop-down"></i>
                                </div>
                            </a>
                            
                            <ul class="main-menu">
                                <li>
                                    <a href=""><i class="md md-person"></i> Perfil</a>
                                </li>
                            </ul>
                        </div>
                        
                        <ul class="main-menu">
                            <li class="active"><a href="index.html"><i class="md md-home"></i> Inicio</a></li>
                            <li>
                                <a href=""><i class="md md-add-circle-outline"></i>Nueva Solicitud</a>
                            </li>
                           <li>
                                <a href=""><i class="md md-subject"></i>Solicitud</a>
                            </li>
                            <li>
                                <a href=""><i class="md md-quick-contacts-mail"></i>Contactenos</a>
                            </li>
                            <li>
                                <a href=""><i class="md md-add-circle-outline"></i>Nuevo Administrador</a>
                            </li>
                            <li class="sub-menu">
                                <a href=""><i class="md md-school"></i>Aulas Virtuales</a>
                                <ul>
                                    <li><a href="flot-charts.html">Nueva aula</a></li>
                                    <li><a href="other-charts.html">Ver aulas</a></li>
                                </ul>
                            </li>
                            <li class="sub-menu">
                                <a href=""><i class="md md-trending-up"></i>Estadisticas</a>
                                <ul>
                                    <li><a href="flot-charts.html">Mensuales</a></li>
                                    <li><a href="other-charts.html">Semestrales</a></li>
                                </ul>
                            </li>
                                <li class="sub-menu">
                                <a href=""><i class="md md-subject"></i>Solicitudes</a>
                                <ul>
                                    <li><a href="flot-charts.html">Pendientes</a></li>
                                    <li><a href="other-charts.html">Atendidas</a></li>
                                </ul>
                            </li>
                            
                        </ul>
                    </div>
                </div>
            </aside>
        </section>
		{{ content() }}
		{{ javascript_include('js/jquery-2.1.1.min.js') }}
        {{ javascript_include('js/bootstrap.min.js') }}
        {{ javascript_include('vendors/flot/jquery.flot.min.js') }}
        {{ javascript_include('vendors/flot/jquery.flot.resize.min.js') }}
        {{ javascript_include('vendors/flot/plugins/curvedLines.js') }}
        {{ javascript_include('vendors/sparklines/jquery.sparkline.min.js') }}
        {{ javascript_include('vendors/easypiechart/jquery.easypiechart.min.js') }}
        {{ javascript_include('vendors/fullcalendar/lib/moment.min.js') }}
        {{ javascript_include('vendors/fullcalendar/fullcalendar.min.js') }}
        {{ javascript_include('vendors/simpleWeather/jquery.simpleWeather.min.js') }}
        {{ javascript_include('vendors/auto-size/jquery.autosize.min.js') }}
        {{ javascript_include('vendors/nicescroll/jquery.nicescroll.min.js') }}
        {{ javascript_include('vendors/waves/waves.min.js') }}
        {{ javascript_include('vendors/bootstrap-growl/bootstrap-growl.min.js') }}
        {{ javascript_include('vendors/sweet-alert/sweet-alert.min.js') }}
        {{ javascript_include('js/flot-charts/curved-line-chart.js') }}
        {{ javascript_include('js/flot-charts/line-chart.js') }}
        {{ javascript_include('js/charts.js') }}
        {{ javascript_include('js/functions.js') }}
	</body>
</html>