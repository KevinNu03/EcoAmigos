<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro_Ga.aspx.cs" Inherits="EcoAmigios.Forms.Registro_Ga" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="../CSS/RegistroGa.css" rel="stylesheet" />
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
        <div class="formcontent">
        </div>
        <form id="formulario_login" runat="server">
            <div class="form-control">
                <div>
                    <asp:Label ID="lbIdentificacion" runat="server" Text="Identificacion:"></asp:Label>
                    <asp:TextBox ID="TbGIdentificacion" CssClass="form-control" runat="server" placeholder="Identificacion del Usuario"></asp:TextBox>

                    <asp:Label ID="lbGambiental" runat="server" Text="Nombre:"></asp:Label>
                    <asp:TextBox ID="TbGNombre" CssClass="form-control" runat="server" placeholder="Nombres del Grupo Ambiental"></asp:TextBox>

                    <asp:Label ID="lbGambiental1" runat="server" Text="Tipo de Grupo:"></asp:Label>
                    <asp:DropDownList ID="ListGAmbiental" runat="server" CssClass="form-control">
                        <asp:ListItem>Seleccione uno...</asp:ListItem>
                        <asp:ListItem>Cuidado Medio Mabiente</asp:ListItem>
                        <asp:ListItem>Cuidado del Agua</asp:ListItem>
                        <asp:ListItem>Reciclaje</asp:ListItem>
                    </asp:DropDownList>

                    <asp:Label ID="lbGambiental2" runat="server" Text="Telefono:"></asp:Label>
                    <asp:TextBox ID="TbGTelefono" CssClass="form-control" runat="server" placeholder="Telefono del Grupo Ambiental"></asp:TextBox>
                </div>
                <div class="row">
                    <asp:Button ID="BtnSiguiente" CssClass=" btn btn-primary btn-dark" runat="server" Text="Siguiente" OnClick="BtnSiguiente_Click" />
                    <asp:Button ID="BtnRegresar" CssClass=" btn btn-primary btn-dark" runat="server" Text="Regresar" OnClick="BtnRegresar_Click1" />
                </div>
            </div>
        </form>
    </div>
</body>
</html>
