<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro_Correo.aspx.cs" Inherits="EcoAmigios.Forms.Registro_Correo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="../CSS/Registro1.css" rel="stylesheet" />
    <title>Registro Usuario</title>
    <style type="text/css">
        #formulario_login {
            width: 40%;
            height: 50%;
            margin-left: 50%;
            margin-top: 10%;
        }
    </style>
</head>
<body>
    <div class="wra">
        <form id="formulario_login" runat="server">
            <div class="form-control">
                <asp:Label ID="LabelCodigo" runat="server" Visible="False"></asp:Label>
                <div>
                    <asp:Label ID="LabelUsuario" runat="server" Text="Usuario:"></asp:Label>
                    <asp:TextBox ID="TbUsuario" CssClass="form-control" runat="server" placeholder="usuario"></asp:TextBox>

                    <asp:Label ID="lbCorreo" runat="server" Text="Correo del Usuario:"></asp:Label>
                    <asp:TextBox ID="TbCorreo" CssClass="form-control" runat="server" placeholder="Correo del Usuario" TextMode="Email"></asp:TextBox>

                </div>
                <div class="row">
                    <asp:Button ID="BtSiguiente" CssClass=" btn btn-primary btn-dark" runat="server" Text="Siguiente" OnClick="BtSiguiente_Click" />
                    <asp:Button ID="BtRegresar" CssClass=" btn btn-primary btn-dark" runat="server" Text="Regresar" OnClick="BtRegresar_Click" />

                </div>

            </div>
        </form>
    </div>
</body>
</html>

