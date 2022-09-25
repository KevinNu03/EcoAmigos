<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_Usu.aspx.cs" Inherits="EcoAmigios.Forms.Login_Usu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <link href="../CSS/Login.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="EcoAmigos" Font-Names="Comic Sans MS" CssClass="Titulo"></asp:Label>
               
        <p>
            
        </p>
        <asp:Label ID="LabelError" runat="server" ForeColor="Red" Font-Size="Large" ></asp:Label>
        <p>
            <asp:TextBox ID="TbUsuario" runat="server" CssClass="txtUsuario" placeholder="Usuario" ForeColor="Black"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:TextBox ID="TbContraseña" runat="server" CssClass="txtContraseña" TextMode="Password" placeholder="Contraseña"></asp:TextBox>
           <br>
               
               </br>
            <table class="auto-style1" >
                <tr>
                <div>
                    <asp:Button ID="BtnIngresar" runat="server" Text="INGRESAR" CssClass="BtnIngresar"  OnClick="BtnIngresar_Click"/>
                </div>
                <td>
                    <asp:Button ID="BtnRegistrar" runat="server" Text="REGISTRARSE" CssClass="BtnIngresar" OnClick="BtnRegistrar_Click"/>
            
                </td>
                <td>
                    <asp:Button ID="BtnContraseña" runat="server" Text="OLVIDO SU CONTRASEÑA" CssClass="BtnIngresar" OnClick="BtnContraseña_Click"/>
            
               </td>
             
                </tr>
            </table>
            
        </p>
    </form>
</body>
</html>

