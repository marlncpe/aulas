   <body class="login-content">
        <!-- Login -->
        <div class="lc-block toggled" id="l-login">
            <div class="input-group m-b-20">
                <span class="input-group-addon"><i class="md md-person"></i></span>
                <div class="fg-line">
                    <input type="text" class="form-control" placeholder="Usuario">
                </div>
            </div>
            
            <div class="input-group m-b-20">
                <span class="input-group-addon"><i class="md md-lock"></i></span>
                <div class="fg-line">
                    <input type="password" class="form-control" placeholder="Contrseña">
                </div>
            </div>
            
            <div class="clearfix"></div>
            
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="">
                    <i class="input-helper"></i>
                    Recordar mi Contraseña
                </label>
            </div>
            
            <a href="" class="btn btn-login btn-danger btn-float"><i class="md md-arrow-forward"></i></a>
            
            <ul class="login-navigation">
                <li data-block="#l-register" class="bgm-red">Registrate</li>
                <li data-block="#l-forget-password" class="bgm-orange">Olvido su Contraseña?</li>
            </ul>
        </div>
        
        <!-- Register -->
        <div class="lc-block" id="l-register">
            <div class="input-group m-b-20">
                <span class="input-group-addon"><i class="md md-person"></i></span>
                <div class="fg-line">
                    <input type="text" class="form-control" placeholder="Nombres">
                </div>
            </div>
            <div class="input-group m-b-20">
                <span class="input-group-addon"><i class="md md-person"></i></span>
                <div class="fg-line">
                    <input type="text" class="form-control" placeholder="Apellidos">
                </div>
            </div>
            <div class="input-group m-b-20">
                <span class="input-group-addon"><i class="md md-person"></i></span>
                <div class="fg-line">
                    <input type="text" class="form-control" placeholder="Cedula">
                </div>
            </div>
            <div class="input-group m-b-20">
                <span class="input-group-addon"><i class="md md-person"></i></span>
                <div class="fg-line">
                    <input type="text" class="form-control" placeholder="Nombre de Usuario">
                </div>
            </div>
            
            <div class="input-group m-b-20">
                <span class="input-group-addon"><i class="md md-mail"></i></span>
                <div class="fg-line">
                    <input type="text" class="form-control" placeholder="Correo Electronico">
                </div>
            </div>
            
            <div class="input-group m-b-20">
                <span class="input-group-addon"><i class="md md-lock"></i></span>
                <div class="fg-line">
                    <input type="password" class="form-control" placeholder="Contraseña">
                </div>
            </div>
            <div class="input-group m-b-20">
                <span class="input-group-addon"><i class="md md-phone"></i></span>
                <div class="fg-line">
                    <input type="text" class="form-control" placeholder="Telefono">
                </div>
            </div>
            <div class="input-group m-b-20">
                <span class="input-group-addon"><i class="md md-format-list-bulleted"></i></span>
                <div class="fg-line">
                    <select class="form-control">
                        <option>Seleccione Vicerrectorado</option>
                        <option>Planificación y Desarrollo Regional (Apure)</option>
                        <option>Planificación y Desarrollo Social (Barinas)</option>
                        <option>Infraestructura y Procesos Industriales (San Carlos)</option>
                        <option>Produccion Agricola (Guanare)</option>
                    </select>
                </div>
            </div>
            
            <div class="clearfix"></div>
            
            <!--<div class="checkbox">
                <label>
                    <input type="checkbox" value="">
                    <i class="input-helper"></i>
                    Accept
                </label>
            </div>-->
            
            <a href="" class="btn btn-login btn-danger btn-float"><i class="md md-arrow-forward"></i></a>
            
            <ul class="login-navigation">
                <li data-block="#l-login" class="bgm-green">Iniciar Sesión</li>
                <li data-block="#l-forget-password" class="bgm-orange">Olvido su Contraseña?</li>
            </ul>
        </div>
        
        <!-- Forgot Password -->
        <div class="lc-block" id="l-forget-password">
            <p class="text-left">Introduzca su Correo Electronico; le enviaremos su contraseña.</p>
            
            <div class="input-group m-b-20">
                <span class="input-group-addon"><i class="md md-email"></i></span>
                <div class="fg-line">
                    <input type="text" class="form-control" placeholder="Correo Electronico">
                </div>
            </div>
            
            <a href="" class="btn btn-login btn-danger btn-float"><i class="md md-arrow-forward"></i></a>
            
            <ul class="login-navigation">
                <li data-block="#l-login" class="bgm-green">Iniciar Sesión</li>
                <li data-block="#l-register" class="bgm-red">Registrate</li>
            </ul>
        </div>
    </body>
