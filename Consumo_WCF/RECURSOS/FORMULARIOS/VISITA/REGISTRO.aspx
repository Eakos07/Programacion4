<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="REGISTRO.aspx.cs" Inherits="Consumo_WCF.RECURSOS.FORMULARIOS.VISITA.REGISTRO" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <!--CSS BOOTSTRAP-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
    
    <!--JS BOOTRAP-->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    
    <!--CSS PROPIO-->
    <link rel="stylesheet" href="../../CSS_PROPIO/CSS.css" type="text/css" />

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="margin-top:0">
            <a class="navbar-brand" href="PRINCIPAL.aspx">
                <img src="../../IMAGENES/Logo.png" width="85" height="30" class="d-lg-inline-block align-top " alt="Inicio"/>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="PRINCIPAL.aspx">Inicio <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Nosotros</a>
                    </li>
                    <li class="nav-item">
                         <a class="nav-link" href="#">Contacto</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <asp:TextBox class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Buscar" runat="server"></asp:TextBox>
                    <asp:Button class="btn btn-outline-info my-2 my-sm-0" Text="Buscar" runat="server"/>
                </form>
            </div>
        </nav>

        <div class="container border text-center boxlogin bg-light">
            <div class="form-group">
                <br />
                <img src="../../IMAGENES/Team.png" style="width:80px; height:80px;"/>
            </div>
            <div class="form-group">
                <label>ID cliente: </label>
                <asp:TextBox ID="txt_id_cliente_registro" class="form-control bg-transparent" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Nombre: </label>
                <asp:TextBox ID="txt_nombre_registro" class="form-control bg-transparent" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Apellidos: </label>
                <asp:TextBox ID="txt_apellidos_registro" class="form-control bg-transparent" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Direccion: </label>
                <asp:TextBox ID="txt_direccion_registro" class="form-control bg-transparent" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Email: </label>
                <asp:TextBox ID="txt_email_registro" class="form-control bg-transparent" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>ID tipo cliente: </label>
                <asp:TextBox ID="txt_id_tipo_cliente_registro" class="form-control bg-transparent" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>ID estado: </label>
                <asp:TextBox ID="txt_id_estado_registro" class="form-control bg-transparent" runat="server"></asp:TextBox>
            <div class="form-group">
                <label>Id cuenta: </label>
                <asp:TextBox ID="txt_id_cuenta_registro" class="form-control bg-transparent" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Codigo de pais: </label>
                <asp:TextBox ID="txt_codigo_pais_registro" class="form-control bg-transparent" runat="server"></asp:TextBox>
            </div>
            </div>
            <div class="form-group">
                 <asp:Button ID="btn_registro" class="btn boton" Text="Aceptar" runat="server"/>
            </div>
            <div class="form-group">
                 <a href="LOGIN.aspx">Ya tienes una cuenta?</a>
            </div>
        </div>
    </form>
</body>
</html>
