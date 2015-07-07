  <style>
  #arriba{
    position:absolute;
    z-index:999px;
    top:0px;
    width:100%;
    left:0px;
    height:385px;
  }
  </style>
   <body class="login-content">
        {{ image('img/banner.png','id':'arriba')}}
        <!-- Login -->
        <div class="lc-block toggled" id="">
            {{ form('session/start', 'role': 'form', 'method':'post' ) }}
            {{ content() }}
                <div class="input-group m-b-20">
                    <span class="input-group-addon"><i class="md md-person"></i></span>
                    <div class="fg-line">
                        <input type="text" name="email" class="form-control" placeholder="Usuario" autofocus data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Ingrese Usuario o Correo Electronico">
                    </div>
                </div>
                
                <div class="input-group m-b-20">
                    <span class="input-group-addon"><i class="md md-lock"></i></span>
                    <div class="fg-line">
                        <input type="password" name="password" class="form-control" placeholder="Contrseña">
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
                
                <button type="submit" class="btn btn-login btn-danger btn-float">
                    <i class="md md-arrow-forward"></i>
                </button>

                <ul class="login-navigation">
                    <li data-block="#l-register" class="bgm-red">Registrate</li>
                    <!--<li data-block="#l-forget-password" class="bgm-orange">Olvido su Contraseña?</li>-->
                </ul>
            </form>
        </div>
        
        <!-- Register -->
        <div class="lc-block" id="l-register">
            {{ form("usuarios/create", "method":"post") }}
                <div class="input-group m-b-20">
                    <span class="input-group-addon"><i class="md md-person"></i></span>
                    <div class="fg-line">
                        <input type="text" class="form-control" placeholder="Nombres" name="nombres"  data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Introduzca sus nombres ejemplo: Pedro Jose" pattern="[a-zA-Z ]+" required>
                    </div>
                </div>
                <div class="input-group m-b-20">
                    <span class="input-group-addon"><i class="md md-person"></i></span>
                    <div class="fg-line">
                        <input type="text" class="form-control" placeholder="Apellidos" name="apellidos" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Introduzca sus Apellidos ejemplo: Perez Perez" pattern="[a-zA-Z ]+" required>
                    </div>
                </div>
                <div class="input-group m-b-20">
                    <span class="input-group-addon"><i class="md md-person"></i></span>
                    <div class="fg-line">
                        <input type="text" class="form-control" placeholder="Cedula" name="cedula" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Introduzca su cedula ejemplo: 10.100.100" pattern="[0-9-.]+" required>
                    </div>
                </div>
                <div class="input-group m-b-20">
                    <span class="input-group-addon"><i class="md md-person"></i></span>
                    <div class="fg-line">
                        <input type="text" class="form-control" placeholder="Nombre de Usuario" name="nomb_usuario" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Introduzca su nombre de usuario debe tener minimo 2 digitos maximo 20" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{1,20}$" required>
                    </div>
                </div>
                
                <div class="input-group m-b-20">
                    <span class="input-group-addon"><i class="md md-mail"></i></span>
                    <div class="fg-line">
                        <input type="email" class="form-control" placeholder="Correo Electronico" name="correo" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Introduzca su correo Electronico ejemplo: correo@correo.com" required>
                    </div>
                </div>
                
                <div class="input-group m-b-20">
                    <span class="input-group-addon"><i class="md md-lock"></i></span>
                    <div class="fg-line">
                        <input type="password" class="form-control" placeholder="Contraseña" name="clave" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="La clave debe tener al menos 8 digitos y debe contener mayusculas, minusculas, numeros y caracteres especiales"pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$" required>
                    </div>
                </div>
                <div class="input-group m-b-20">
                    <span class="input-group-addon"><i class="md md-phone"></i></span>
                    <div class="fg-line">
                        <input type="text" class="form-control" placeholder="Telefono" name="telefono" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Introduzca su numero de telefono ejemplo: (CODIGO)-000-00-00" pattern="([0-9])+(?:-?\d){9,}" required>
                    </div>
                </div>
                <div class="input-group m-b-20">
                    <span class="input-group-addon"><i class="md md-format-list-bulleted"></i></span>
                    <div class="fg-line">
                        <?php 
                            echo $this->tag->select(
                            array(
                                "id_vpds",
                                Vpds::find(),
                                "using" => array("id", "nombre"),
                                "class" => "form-control",
                                )
                            );
                            ?>
                    </div>
                </div>
                {{ submit_button("Registrar", 'class': 'btn btn-primary btn-large') }}
            </form>
            <div class="clearfix"></div>
            
            <!--<div class="checkbox">
                <label>
                    <input type="checkbox" value="">
                    <i class="input-helper"></i>
                    Accept
                </label>
            </div>-->
            
            <!--<a href="" class="btn btn-login btn-danger btn-float"><i class="md md-arrow-forward"></i></a>-->
            
            <ul class="login-navigation">
                <!--<li data-block="#l-login" class="bgm-green">Iniciar Sesión</li>
               <li data-block="#l-forget-password" class="bgm-orange">Olvido su Contraseña?</li>-->
            </ul>
        </div>
        
        <!--Forgot Password -->
        <!--<div class="lc-block" id="l-forget-password">
            <p class="text-left">Introduzca su Correo Electronico; le enviaremos su contraseña.</p>
            
            <div class="input-group m-b-20">
                <span class="input-group-addon"><i class="md md-email"></i></span>
                <div class="fg-line">
                    <input type="text" class="form-control" placeholder="Correo Electronico">
                </div>
            </div>
            
            <a href="" class="btn btn-login btn-danger btn-float"><i class="md md-arrow-forward"></i></a>-->
            
            <ul class="login-navigation">
                <li data-block="#l-login" class="bgm-green">Iniciar Sesión</li>
                <li data-block="#l-register" class="bgm-red">Registrate</li>
            </ul>
        </div>
    </body>