<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cuenta_Usu.aspx.cs" Inherits="EcoAmigios.Forms.Cuenta_Usu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../CSS/CuentaUsuario.css" rel="stylesheet" />
    <title>Datos Personales</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
            
.BotonMenu {
    background: none;
    border-radius: 10px;
    transition: 0.25s;
    border: 2px solid green;
}
 
        .auto-style4 {
            width: 224px;
        }

        .auto-style10{
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            overflow: hidden;
        }
 
    </style>
</head>
<body>
    <div class="bg"></div>
    <div class="bg bg2"></div>
    <div class="bg bg3"></div>
    <div class="content">
        <form id="form1" runat="server">
            <link href="../CSS/Cuenta.css" rel="stylesheet" />
            <div1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="Regresar" runat="server" Height="50px" Width="60px" CssClass="BotonMenu" ImageUrl="~/Imagenes/regreso.png" OnClick="Regresar_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="Actualizar" runat="server" Height="50px" Width="60px" CssClass="BotonMenu" ImageUrl="~/Imagenes/informacion-personal.png" OnClick="Actualizar_Click" />
            <font color="#762C6" size="70px">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<asp:ImageButton ID="C_contraseña" runat="server" Height="50px" Width="60px" CssClass="BotonMenu" ImageUrl="~/Imagenes/Contraseña.png" OnClick="C_contraseña_Click"/>
            </font><br />
            
            <asp:Label ID="Label15" runat="server" Text="Regresar" Font-Names="Comic Sans MS"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label13" runat="server" Text="Mostrar Datos" Font-Names="Comic Sans MS"></asp:Label>
            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label14" runat="server" Text="       Cambiar contraseña" Font-Names="Comic Sans MS"></asp:Label>
            <asp:Label ID="Label10" runat="server" Text="EcoAmigos" Font-Names="Comic Sans MS" CssClass="Titulo"></asp:Label>

        </div1>
            <div class="div">
                <asp:MultiView ID="MultiView1" runat="server">

                    <asp:View ID="View2" runat="server">
                        <div>
                            &nbsp;&nbsp;<table class="auto-style1">
                                <tr>
                                    <td>
                                        <asp:Label ID="Label16" runat="server" CssClass="Todo" Font-Names="Comic Sans MS" Text="Tipo de Documento"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ListDoc" runat="server" CssClass="texbox">
                                            <asp:ListItem>Seleccione uno...</asp:ListItem>
                                            <asp:ListItem>Cedula de Ciudadania</asp:ListItem>
                                            <asp:ListItem>Tarjeta de Identidad</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label11" runat="server" CssClass="Todo" Font-Names="Comic Sans MS" Text="Documento de Identidad"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TbDocumento" runat="server" CssClass="texbox" Font-Names="Comic Sans MS" ReadOnly="True"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" CssClass="Todo" Font-Names="Comic Sans MS" Text="Nombres"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TbNombres" runat="server" CssClass="texbox" Font-Names="Comic Sans MS" ReadOnly="True"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label4" runat="server" CssClass="Todo" Font-Names="Comic Sans MS" Text="Apellido"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TbApellido" runat="server" CssClass="texbox" Font-Names="Comic Sans MS" ReadOnly="True"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label5" runat="server" CssClass="Todo" Font-Names="Comic Sans MS" Text="Correo"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TbCorreo" runat="server" CssClass="texbox" Font-Names="Comic Sans MS" TextMode="Email" ReadOnly="True"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label6" runat="server" CssClass="Todo" Font-Names="Comic Sans MS" Text="Telefono"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TbTelefono" runat="server" CssClass="texbox" Font-Names="Comic Sans MS" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label7" runat="server" CssClass="Todo" Font-Names="Comic Sans MS" Text="Usuario"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TbUsuario" runat="server" CssClass="texbox" Font-Names="Comic Sans MS" ReadOnly="True"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label8" runat="server" CssClass="Todo" Font-Names="Comic Sans MS" Text="Contraseña"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TbContraseña" runat="server" CssClass="texbox" Font-Names="Comic Sans MS" ReadOnly="True">*********</asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </div>
                        <table class="auto-style1">
                            <tr>
                                <td>
                                    <asp:Button ID="btnGuardar" runat="server" CssClass="boton" Text="Guardar" OnClick="btnGuardar_Click" />
                                    <td>
                                        <asp:Button ID="btnActualizar" runat="server" CssClass="boton" Text="ACTUALIZAR DATOS" OnClick="btnActualizar_Click" />
                                    </td>
                                </td>
                            </tr>
                        </table>
                    </asp:View>

                    <asp:View ID="View3" runat="server">
                        <table class="auto-style10">
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label1" runat="server" CssClass="Todo" Font-Names="Comic Sans MS" Text="Contraseña Antigua"></asp:Label></td>
                                <td>
                                    <asp:TextBox ID="TbContraseñaA" runat="server" CssClass="texbox" Font-Names="Comic Sans MS" TextMode="Password"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label2" runat="server" CssClass="Todo" Font-Names="Comic Sans MS" Text="Nueva Contraseña"></asp:Label></td>
                                <td>
                                    <asp:TextBox ID="TbContraseñaN" runat="server" CssClass="texbox" Font-Names="Comic Sans MS" TextMode="Password"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label9" runat="server" CssClass="Todo" Font-Names="Comic Sans MS" Text="Confirmar Contraseña"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TbContraseñaR" runat="server" CssClass="texbox" Font-Names="Comic Sans MS" TextMode="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Button ID="btnCambiar" runat="server" CssClass="boton" Text="CAMBIAR CONTRASEÑA" OnClick="btnCambiar_Click" />
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                </asp:MultiView>
            </div>
        </form>
    </div>
    </body>
</html>
