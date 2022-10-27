<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ver_Pagina.aspx.cs" Inherits="EcoAmigios.Forms.Ver_Pagina" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../CSS/Ver_Pag.css" rel="stylesheet" />
    <title>Paginas</title>
    <style type="text/css">
        
        .auto-style1 {
            width: 1301px;
        }
        .auto-style2 {
            width: 281px;
        }
        .auto-style3 {
            width: 291px;
        }
        .auto-style4 {
            width: 1465px;
        }
        .auto-style5 {
            width: 1437px;
        }
        
        .auto-style6 {
            width: 100%;
        }
                
        .auto-style7 {
            width: 109px;
        }
                
        .auto-style8 {
            text-align: center;
        }
                
        .auto-style9 {
            margin-right: 0px;
        }
                
    </style>
</head>
<body>
    <div class="background">
        <form id="form1" runat="server">
            <div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="IBRegresar0" runat="server" Height="52px" ImageUrl="~/Imagenes/regreso.png" OnClick="IBRegresar1_Click" Width="51px" />

                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label48" runat="server" Font-Names="Comic Sans MS" Text="Regresar"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table class="auto-style1">
                <tr>
                    <td class="auto-style11" rowspan="6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                <asp:Image ID="ImageP" runat="server" CssClass="auto-style3" Height="187px" Width="213px" BorderStyle="Outset" />
                    </td>
                    <td class="auto-style9"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="Label11" runat="server" CssClass="Todo" Font-Names="Comic Sans MS" Text="Tipo de Pagina"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TbTipoPag" runat="server" CssClass="texbox" Font-Names="Comic Sans MS" Width="295px" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="Label17" runat="server" CssClass="Todo" Font-Names="Comic Sans MS" Text="Nombre De La Pagina"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TbNombreP" runat="server" CssClass="texbox" Font-Names="Comic Sans MS" Width="295px" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td rowspan="5">
                        <asp:TextBox ID="TbDescP" runat="server" CssClass="texbox" Font-Names="Comic Sans MS" Height="128px" TextMode="MultiLine" Width="296px" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="Label18" runat="server" CssClass="Todo" Font-Names="Comic Sans MS" Text="Descripcion de la Pagina"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11" rowspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="IBMensaje" runat="server" Height="52px" ImageUrl="~/Imagenes/mensaje.png" OnClick="IBMensaje_Click" Width="51px" />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label49" runat="server" Font-Names="Comic Sans MS" Text="Enviar Mensaje"></asp:Label>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
            </table>
            </div>
            <table class="auto-style5">
                <tr>
                    <td class="auto-style7">
                        <div class="auto-style8">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DataList ID="DataListPublicaciones" runat="server" DataSourceID="SqlDataSourcePublicaciones" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" Font-Names="Comic Sans MS" Font-Size="Large" Width="868px" CssClass="auto-style9">
                        <AlternatingItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
                        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
                        <ItemTemplate>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <h4>PUBLICACIONES</h4>
                            <table class="auto-style6">

                                <br />
                                <tr>
                                    <td rowspan="2">
                                        <asp:Image ID="ImagePagina" runat="server" CssClass="imagen" Height="120" ImageUrl='<%# "~/Imagenes/"+Eval("Img_Publi") %>' Width="140" /></td>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Titulo:" />
                         
                                    <asp:Label ID="Titulo_PubliLabel" runat="server" Text='<%# Eval("Titulo") %>' />
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <br />
                                    <td>
                                        <asp:Label ID="ContenidoPubliLabel" runat="server" Text='<%# Eval("Contenido") %>' />
                                        <br />
                                        <br />

                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>

                        </div>

                        <asp:SqlDataSource ID="SqlDataSourcePublicaciones" runat="server" ConnectionString="<%$ ConnectionStrings:EcoAmigos %>" SelectCommand="SELECT [Img_Publi], [Titulo], [Contenido] FROM [Publicaciones] WHERE ([Nombre_Pag] = @Nombre_Pag)">
                            <SelectParameters>
                                <asp:SessionParameter Name="Nombre_Pag" SessionField="Nombre_Pag" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DataList ID="DataListEventos" runat="server" DataSourceID="SqlDataSourceEventos" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" Width="267px">
                                                   
                        <ItemTemplate>
                            <br />
                            <br />
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Titulo:" />                
                            <asp:Label ID="Titulo_EventoLabel" runat="server" Text='<%# Eval("Titulo") %>' />
                            <br />
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Se realizara:" />
                            <asp:Label ID="Contenido_EventoLabel" runat="server" Text='<%# Eval("Realizar") %>' />
                            <br />
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Fecha a realizarse:" />
                            <asp:Label ID="Fecha_EventoLabel" runat="server" Text='<%# Eval("Fecha") %>' />
                            <br />
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSourceEventos" runat="server" ConnectionString="<%$ ConnectionStrings:EcoAmigos %>" SelectCommand="SELECT [Fecha], [Titulo], [Realizar] FROM [Eventos] WHERE ([Nombre_Pag] = @Nombre_Pag)">
                            <SelectParameters>
                                <asp:SessionParameter Name="Nombre_Pag" SessionField="Nombre_Pag" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </form>
        <div class="elements">
            <div class="square sq1"></div>
            <div class="square sq2"></div>
            <div class="square sq3"></div>
        </div>
    </div>
</body>
</html>
