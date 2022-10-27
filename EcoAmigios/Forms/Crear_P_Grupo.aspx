<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Crear_P_Grupo.aspx.cs" Inherits="EcoAmigios.Forms.Crear_P_Grupo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../CSS/Creap_P.css" rel="stylesheet" />
    <title>Crear Pagina</title>
    <style type="text/css">
      
        .auto-style1 {
            width: 100%;
            height: 100%
        }
        .auto-style2 {
        }
        .auto-style3 {
            width: 940px;
            height: 377px;
        }
        .auto-style4 {
            width: 300px;
        }
        .auto-style7 {
            height: 39px;
        }
        .auto-style8 {
            height: 26px;
        }
        .auto-style9 {
            height: 34px;
        }
        .auto-style10 {
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            overflow: hidden;
            width: 100%;
            height: 137%;
        }
        .auto-style11 {
            height: 63px;
        }
    </style>
</head>
<body style="margin-left: 109px">
    <form id="form1" runat="server" class="auto-style3">
        <p>
            <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" Font-Overline="False" Font-Size="X-Large" ForeColor="White" Height="50px" Text="ECOAMIGOS" Width="50px"></asp:Label>
        </p>
         <div>
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">
            <asp:ImageButton ID="BtnRegresar" runat="server" Height="53px" ImageUrl="~/Imagenes/regreso.png" Width="61px" OnClick="BtnRegresar_Click" />
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Comic Sans MS" ForeColor="Black" Text="REGRESAR"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
            </table>
        </div>
        </div>
        <table class="auto-style10">
            <tr>
                <td class="auto-style8">
                    </td>
                <td class="auto-style8">
                    </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    </td>
                <td class="auto-style8">
                    </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    <asp:TextBox ID="TbGIdentificacion" runat="server" Font-Names="Comic Sans MS" Width="219px" CssClass ="texto" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" ForeColor="Black" Text="Tipo de Pagina" CssClass ="texto" Width="300px"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:DropDownList ID="ListGtipo" runat="server" Font-Names="Comic Sans MS" Width="219px" CssClass ="texto">
                        <asp:ListItem>Seleccione Uno...</asp:ListItem>
                        <asp:ListItem>Informativa</asp:ListItem>
                        <asp:ListItem>Cuidado Animal</asp:ListItem>
                        <asp:ListItem>Cuidado Medio Ambiente</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" ForeColor="Black" Text="Nombre de Pagina" CssClass ="texto" Width="300px"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TbGNombre" runat="server" Font-Names="Comic Sans MS" Width="219px" CssClass ="texto"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" ForeColor="Black" Text="Descripcion de la Pagina" CssClass ="texto" Width="300px"></asp:Label>
                </td>
                <td rowspan="3">
                    <asp:TextBox ID="TbGDescripcion" runat="server" Font-Names="Comic Sans MS" TextMode="MultiLine" Width="219px" Height="79px" CssClass ="texto"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" ForeColor="Black" Text="Logo Pagina" CssClass ="texto" Width="300px"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileLogo" runat="server" CssClass ="texto"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnGuardar" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Medium" Text="Guardar" CssClass="boton" OnClick="BtnGuardar_Click"/>
                </td>
                <td class="auto-style11">
                    <asp:Button ID="BtnRegreso" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Medium" Text="Regresar" CssClass="boton"/>
                </td>
            </tr>
        </table>
               
                      
            
            
           
      
    </form>
</body>
</html>