<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_Ga.aspx.cs" Inherits="EcoAmigios.Forms.Login_Ga" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <link href="../CSS/LoginGa.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="header">

        <!--Content before waves-->
        <div class="inner-header flex">
            <!--Just the logo.. Don't mind this-->
            <svg version="1.1" class="logo" baseProfile="tiny" id="Layer_1" xmlns="http://www.w3.org/2000/svg"
                xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 500 500" xml:space="preserve">
                <path fill="#FFFFFF" stroke="#000000" stroke-width="10" stroke-miterlimit="10" d="M57,283" />
                <g>

                </g>
            </svg>
            <form id="form1" runat="server">
                <asp:Label ID="Label1" runat="server" Text="EcoAmigos" Font-Names="Comic Sans MS" CssClass="Titulo"></asp:Label>
                <p>
                </p>
                <asp:Label ID="LabelError" runat="server" ForeColor="Red" Font-Size="Large"></asp:Label>
                <p>
                    <asp:TextBox ID="TbGUsuario" runat="server" CssClass="txtUsuario" placeholder="Usuario" Font-Names="Comic Sans MS" Font-Size="15px" ForeColor="White"></asp:TextBox>
                </p>
                <p>
                    <p>
                        <asp:TextBox ID="TbGContraseña" runat="server" CssClass="txtContraseña" TextMode="Password" placeholder="Contraseña" Font-Names="Comic Sans MS" Font-Size="15px" ForeColor="White"></asp:TextBox>
                        <br></br>
                        <table class="auto-style1">
                            <tr>
                                <div>
                                    <asp:Button ID="BtnIngresar" runat="server" Text="INGRESAR" CssClass="BtnIngresar" OnClick="BtnIngresar_Click" />
                                </div>
                                <td>
                                    <asp:Button ID="BtnRegistrar" runat="server" Text="REGISTRARSE" CssClass="BtnContra" OnClick="BtnRegistrar_Click" />
                                </td>
                                <td>
                                    <asp:Button ID="BtnContraseña" runat="server" Text="OLVIDO SU CONTRASEÑA" CssClass="BtnContra" Font-Size="11px" OnClick="BtnContraseña_Click" />
                                </td>
                            </tr>
                        </table>
                    </p>
            </form>
        </div>
        <br />
        <br />
        <br />
        <!--Waves Container-->
        <div>
            <svg class="waves" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                viewBox="0 24 150 28" preserveAspectRatio="none" shape-rendering="auto">
                <defs>
                    <path id="gentle-wave" d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z" />
                </defs>
                <g class="parallax">
                    <use xlink:href="#gentle-wave" x="48" y="0" fill="rgba(255,255,255,0.7" />
                    <use xlink:href="#gentle-wave" x="48" y="3" fill="rgba(255,255,255,0.5)" />
                    <use xlink:href="#gentle-wave" x="48" y="5" fill="rgba(255,255,255,0.3)" />
                    <use xlink:href="#gentle-wave" x="48" y="7" fill="#fff" />
                </g>
            </svg>
        </div>
        <!--Waves end-->

    </div>

</body>
</html>
