<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio_Grupo.aspx.cs" Inherits="EcoAmigios.Forms.Inicio_Grupo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Inicio</title>
    <style type="text/css">
        body{
            background-color:palegreen;
        }
        .botonP{
            border-radius:15px;
            background: none;
        }
        .botonP:hover{
            background-color: mediumspringgreen;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 721px;
        }
        .auto-style3 {
            width: 1px;
        }
        .auto-style4 {
            font-size: xx-large;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="LabelNombre" runat="server"></asp:Label>
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:ImageButton ID="IMBCrearP" runat="server" Height="52px" ImageUrl="~/Imagenes/archivo-nuevo.png" Width="53px" OnClick="IMBCrearP_Click" />
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Font-Names="Comic Sans MS" Text="Crear Pagina"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:ImageButton ID="IBCSesion" runat="server" Height="52px" ImageUrl="~/Imagenes/cerrar-sesion.png" Width="51px" OnClick="IBCSesion_Click" />
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Font-Names="Comic Sans MS" Text="Cerrar Sesion"></asp:Label>
                    </td>
                </tr>
            </table>
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat="server">
                    <asp:DataList ID="DataPaginas" runat="server" BorderColor="Gray" DataSourceID="SqlPagina" Font-Bold="False" Font-Italic="False" Font-Names="Comic Sans MS" Font-Overline="False" Font-Size="X-Large" Font-Strikeout="False" Font-Underline="False" GridLines="Both" HorizontalAlign="Center" OnItemCommand="DataPaginas_ItemCommand" RepeatColumns="5" CssClass="auto-style4">
                        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemTemplate>
                            <asp:Image ID="ImagePagina" runat="server" CssClass="imagen" height="120" ImageUrl='<%# "~/Imagenes/"+Eval("Img_Pag") %>' width="140" />
                            <br />
                            <asp:Label ID="Nombre_PaginaLabel" runat="server" Text='<%# Eval("Nombre_Pagina") %>' />
                            <br />
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Tipo de Pagina:" />
                            <br />
                            <asp:Label ID="ID_Tipo_PaginaLabel" runat="server" Text='<%# Eval("Tipo_Pagina") %>' />
                            <br />
                            <br />
                            <asp:Button ID="ButtonPagina" runat="server" CommandName="Ver_Pagina" CssClass="botonP" Text="Editar Pagina" />
                        </ItemTemplate>
                    </asp:DataList>
                    <br />
                </asp:View>
                <asp:View ID="View2" runat="server">
                </asp:View>
            </asp:MultiView>
            
            <asp:SqlDataSource ID="SqlPagina" runat="server" ConnectionString="<%$ ConnectionStrings:EcoAmigos %>" SelectCommand="SELECT * FROM [Pagina] WHERE ([Identificacion] = @Identificacion)">
                <SelectParameters>
                    <asp:SessionParameter Name="Identificacion" SessionField="Id_Grupo" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
