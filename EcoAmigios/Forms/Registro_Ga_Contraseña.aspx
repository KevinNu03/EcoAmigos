<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro_Ga_Contraseña.aspx.cs" Inherits="EcoAmigios.Forms.Registro_Ga_Contraseña" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="../CSS/RegistroGa2.css" rel="stylesheet" />
    <title>Registro</title>
    <style type="text/css">
       #formulario_login {
            width: 40%;
            height: 45%;
            margin-left: 60%;
            margin-right: 0px;
            margin-top: 0px;
            margin-bottom: 0px;
        }
    </style>
</head>
<body class="hg-ligt">
    <div class="wrapper">
        <form id="formulario_login" runat="server">
            <div class="form-control">
                <div>
                    <asp:Label ID="lbContrasena" runat="server" Text="Contraseña:"></asp:Label>
                    <asp:TextBox ID="TbGContrasena" CssClass="form-control" runat="server" placeholder="Contraseña" TextMode="Password"></asp:TextBox>
                    <asp:Label ID="lbVerificacionC" runat="server" Text="Verificacion de Contraseña:"></asp:Label>
                    <asp:TextBox ID="TbGVerificacionC" CssClass="form-control" runat="server" placeholder="Verificacion de Contraseña" TextMode="Password"></asp:TextBox>
                </div>
                <div class="row">
                    <asp:Button ID="BtnSiguiente" CssClass=" btn btn-primary btn-dark" runat="server" Text="Siguiente" OnClick="BtnSiguiente_Click" />
                    <asp:Button ID="BtnRegresar" CssClass=" btn btn-primary btn-dark" runat="server" Text="Regresar" OnClick="BtnRegresar_Click" />
                </div>
            </div>
        </form>
    </div>
</body>
</html>
