<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="EcoAmigios.Forms.Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../CSS/Principal.css" rel="stylesheet" />
    <title>Principal</title>
    </head>
<body>
    <form id="form1" runat="server">
        <div class="contenedor">
            <div class="hijo">
                <div class="hijo1">
                    <div class="hijo3">
                        <asp:ImageButton ID="ImageButton3" CssClass="botonUsu" runat="server" OnClick="ImageButton1_Click" ImageUrl="~/Imagenes/ImagenUsuario.png" Width="75%" Height="80%" BorderStyle="Solid" />
                    &nbsp;
                    <asp:Label ID="Label3" runat="server" Font-Names="Comic Sans MS" Font-Size="XX-Large" Text="USUARIO"></asp:Label>
                    </div>
                    <br />
                </div>
                <div class="hijo2">
                    <div class="hijo3">
                        <asp:ImageButton ID="ImageButton4" runat="server" OnClick="ImageButton2_Click" CssClass="botonGru" ImageUrl="~/Imagenes/ImagenGrupo.png" Width="75%" Height="80%" BorderStyle="Solid" />
                    </div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Font-Names="Comic Sans MS" Font-Size="XX-Large" Text="GRUPO"></asp:Label>
                    <br />
                    <asp:Label ID="Label5" runat="server" Font-Names="Comic Sans MS" Font-Size="XX-Large" Text="AMBIENTAL"></asp:Label>
                </div>

            </div>

        </div>

    </form>
</body>
</html>
