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
            <?php 

                if(  ($this->session->has("admin")) || ($this->session->has("registered")) ) { 
            ?>
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
                            <img src="/aulas/img/unellez_logo.png" width="40" height="40">
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

                        
                        {{ form("aulas/search", "method":"post", "autocomplete" : "def") }}
                            <div id="top-search-wrap">
                                <input type="text" placeholder="Buscar Materias con Aulas"name="aulas_materia_nombre">
                                <i id="top-search-close">&times;</i>
                                {{ submit_button("Buscar", 'class':'btn btn-info') }}
                            </div>
                        </form>
                </header>
            
                <section id="main">
                    <aside id="sidebar">
                        <div class="sidebar-inner">
                            <div class="si-inner">
                                <div class="profile-menu">
                                    <a href="">
                                        <div class="profile-pic">
                                            {{ image(session.get('userpicture')) }}
                                        </div>
                                        
                                        <div class="profile-info">

                                            {{ session.get('userlast') }}, {{ session.get('usernames') }}                                            
                                            <i class="md md-arrow-drop-down"></i>
                                        </div>
                                    </a>
                                    
                                    <ul class="main-menu">
                                        <li>
                                            <a href="{{ url('usuarios/profile/') }}{{ session.get('userid') }}"><i class="md md-person"></i> Perfil</a>
                                        </li>
                                    </ul>
                                </div>
                                
                                <ul class="main-menu">
                                    <li class="active"><a href="{{ url('aulas/index') }}"><i class="md md-home"></i> Inicio</a></li>
                                    <?php if ($this->session->has("registered")){ ?> 
                                    <li>
                                        <a href="{{ url('aulas/new/') }}"><i class="md md-add-circle-outline"></i>Solicitud</a>
                                    </li>
                                    <li>
                                        <a href="{{ url('messages/send/') }}"><i class="md md-quick-contacts-mail"></i>Contactenos</a>
                                    </li>
                                    <?php } ?>
                                    <?php if ($this->session->has("admin")){ ?> 
                                    <li>
                                        <a href="{{ url('usuarios/cradmin/') }}"><i class="md md-account-circle"></i>Nuevo Administrador</a>
                                    </li>

                                    <li class="sub-menu">
                                        <a href=""><i class="md md-query-builder"></i>Periodo</a>
                                        <ul>
                                            <li><a href="{{ url('periodo/search/') }}">Ver Todos</a></li>
                                            <li><a href="{{ url('periodo/new/') }}">Crear</a></li>
                                        </ul>
                                    </li>
                                    <li class="sub-menu">
                                        <a href=""><i class="md md-account-balance"></i>Vice-Rectorados</a>
                                        <ul>
                                            <li><a href="{{ url('vpds/search/') }}">Ver Todos</a></li>
                                            <li><a href="{{ url('vpds/new/') }}">Crear</a></li>
                                        </ul>
                                    </li>
                                    <li class="sub-menu">
                                        <a href=""><i class="md md-school"></i>Carreras</a>
                                        <ul>
                                            <li><a href="{{ url('carrera/search/') }}">Ver Todos</a></li>
                                            <li><a href="{{ url('carrera/new/') }}">Crear</a></li>
                                        </ul>
                                    </li>
                                    <li class="sub-menu">
                                        <a href=""><i class="md md-style"></i>Materia</a>
                                        <ul>
                                            <li><a href="{{ url('materia/search/') }}">Ver Todos</a></li>
                                            <li><a href="{{ url('materia/new/') }}">Crear</a></li>
                                        </ul>
                                    </li>
                                    
                                    <li class="sub-menu">
                                        <a href=""><i class="md md-trending-up"></i>Estadisticas</a>
                                        <ul>
                                            <li><a href="{{ url('estadisticas/mes/') }}">Mensuales</a></li>
                                            <li><a href="{{ url('estadisticas/semestre/') }}">Semestrales</a></li>
                                        </ul>
                                    </li>
                                    
                                    <li>
                                        <a href="{{ url('aulas/searchSolicitud/') }}"><i class="md md-assignment-late"></i>Solicitudes</a>
                                    </li>
                                    <?php } ?>
                                    
                                    <li>   
                                        <a href="{{ url('session/end/') }}">
                                            <i class="md md-settings-power"></i>
                                            Salir
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </aside>
                </section>
            <?php } ?>
            {{ content() }}
    		{{ javascript_include('js/jquery-2.1.1.min.js') }}
            {{ javascript_include('js/bootstrap.min.js') }}
            {{ javascript_include('vendors/fileinput/fileinput.min.js') }}
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