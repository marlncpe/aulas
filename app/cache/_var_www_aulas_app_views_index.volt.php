<!DOCTYPE html>
<html>
	<head>
		<?php echo $this->tag->getTitle(); ?>
		<?php echo $this->tag->stylesheetLink('vendors/fullcalendar/fullcalendar.css'); ?>
        <?php echo $this->tag->stylesheetLink('vendors/animate-css/animate.min.css'); ?>
        <?php echo $this->tag->stylesheetLink('vendors/sweet-alert/sweet-alert.min.css'); ?>
        <?php echo $this->tag->stylesheetLink('css/app.min.css'); ?>
        <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet">
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
		<?php echo $this->getContent(); ?>
		<?php echo $this->tag->javascriptInclude('js/jquery-2.1.1.min.js'); ?>
        <?php echo $this->tag->javascriptInclude('js/bootstrap.min.js'); ?>
        <?php echo $this->tag->javascriptInclude('vendors/flot/jquery.flot.min.js'); ?>
        <?php echo $this->tag->javascriptInclude('vendors/flot/jquery.flot.resize.min.js'); ?>
        <?php echo $this->tag->javascriptInclude('vendors/flot/plugins/curvedLines.js'); ?>
        <?php echo $this->tag->javascriptInclude('vendors/sparklines/jquery.sparkline.min.js'); ?>
        <?php echo $this->tag->javascriptInclude('vendors/easypiechart/jquery.easypiechart.min.js'); ?>
        <?php echo $this->tag->javascriptInclude('vendors/fullcalendar/lib/moment.min.js'); ?>
        <?php echo $this->tag->javascriptInclude('vendors/fullcalendar/fullcalendar.min.js'); ?>
        <?php echo $this->tag->javascriptInclude('vendors/simpleWeather/jquery.simpleWeather.min.js'); ?>
        <?php echo $this->tag->javascriptInclude('vendors/auto-size/jquery.autosize.min.js'); ?>
        <?php echo $this->tag->javascriptInclude('vendors/nicescroll/jquery.nicescroll.min.js'); ?>
        <?php echo $this->tag->javascriptInclude('vendors/waves/waves.min.js'); ?>
        <?php echo $this->tag->javascriptInclude('vendors/bootstrap-growl/bootstrap-growl.min.js'); ?>
        <?php echo $this->tag->javascriptInclude('vendors/sweet-alert/sweet-alert.min.js'); ?>
        <?php echo $this->tag->javascriptInclude('js/flot-charts/curved-line-chart.js'); ?>
        <?php echo $this->tag->javascriptInclude('js/flot-charts/line-chart.js'); ?>
        <?php echo $this->tag->javascriptInclude('js/charts.js'); ?>
        <?php echo $this->tag->javascriptInclude('js/functions.js'); ?>
	</body>
</html>