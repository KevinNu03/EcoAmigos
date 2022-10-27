<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Editar_Pagina.aspx.cs" Inherits="EcoAmigios.Forms.Editar_Pagina" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../CSS/Editar_P.css" rel="stylesheet" />
    <title>Editar Pagina</title>
    <style type="text/css">
        body{
            background-color: palegreen;
            height:90%;
        }
        .auto-style1 {
            width: 40%;
            height: 200%;
        }
        .auto-style1 {
            width: 40%;
        }
        .auto-style3 {
            width: 1px;
        }
        .auto-style2 {
            width: 721px;
        }
        .auto-style5 {
            width: 1px;
            height: 50px;
        }
        .auto-style6 {
            width: 721px;
            height: 50px;
        }
        .auto-style9 {
            width: 232px;
        }
        .auto-style11 {
            width: 67%;
        }
        .auto-style13 {
            width: 323px;
            font-family: "Comic Sans MS";
        }
        .auto-style15 {
            width: 62px;
            height: 30px;
        }
        .auto-style16 {
            height: 30px;
        }
        .auto-style17 {
            border-radius: 15px;
        }
        .auto-style18 {
            font-family: "Comic Sans MS";
        }
        .auto-style19 {
            height: 56px;
        }
        .auto-style21 {
            width: 62px;
            height: 56px;
        }
        .auto-style22 {
            text-align: center;
        }
        .auto-style23 {
            width: 323px;
            font-family: "Comic Sans MS";
            text-align: center;
        }
        .auto-style24 {
            width: 62px;
            height: 42px;
        }
        .auto-style25 {
            height: 42px;
        }
        .auto-style26 {
            width: 55px;
            height: 2px;
        }
        .auto-style27 {
            height: 5px;
        }
        .auto-style28 {
            height: 48px;
        }
        .auto-style29 {
            font-family: "Comic Sans MS";
            height: 34px;
        }
        .auto-style30 {
            height: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View3" runat="server">
                    <div class="principal" id="Principal" >
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style5">
                                    <asp:ImageButton ID="IBEPagina" runat="server" Height="52px" ImageUrl="~/Imagenes/editar-codigo.png" OnClick="IBEPagina_Click" Width="53px" />
                                </td>
                                <td class="auto-style6">
                                    <asp:Label ID="LabelEPagina" runat="server" Font-Names="Comic Sans MS" Text="Editar Pagina"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">
                                    <asp:ImageButton ID="IBCPublioEve" runat="server" Height="52px" ImageUrl="~/Imagenes/mas.png" OnClick="IBCPublioEve_Click" Width="53px" />
                                </td>
                                <td class="auto-style6">
                                    <asp:Label ID="LabelCpubli" runat="server" Font-Names="Comic Sans MS" Text="Crear Publicacion o Evento"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">
                                    <asp:ImageButton ID="IBEEvePubli" runat="server" Height="52px" ImageUrl="~/Imagenes/editar.png" OnClick="IBEEvePubli_Click" Width="53px" />
                                </td>
                                <td class="auto-style6">
                                    <asp:Label ID="LabelEEven" runat="server" Font-Names="Comic Sans MS" Text="Editar Eventos o Publicaciones"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">
                                    <asp:ImageButton ID="IBVer" runat="server" Height="52px" ImageUrl="~/Imagenes/ver.png" OnClick="IBVer_Click" Width="51px" />
                                </td>
                                <td class="auto-style6">
                                    <asp:Label ID="Label58" runat="server" Font-Names="Comic Sans MS" Text="Ver Pagina"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">
                                    <asp:ImageButton ID="IBRegresar" runat="server" Height="52px" ImageUrl="~/Imagenes/regreso.png" OnClick="IBRegresar_Click" Width="51px" />
                                </td>
                                <td class="auto-style6">
                                    <asp:Label ID="Label4" runat="server" Font-Names="Comic Sans MS" Text="Regresar"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </div>
                </asp:View>
                <asp:View ID="View1" runat="server" >
                    <table class="auto-styleP">
                        <tr>
                            <td class="auto-style3">
                                <asp:ImageButton ID="IBRegresar0" runat="server" Height="52px" ImageUrl="~/Imagenes/regreso.png" OnClick="IBRegresar1_Click" Width="51px" />
                                <asp:Label ID="Label48" runat="server" Font-Names="Comic Sans MS" Text="Regresar"></asp:Label>
                            </td>
                            <td class="auto-style2">
                                &nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style11" rowspan="6">
                                <asp:Image ID="ImageP" runat="server" CssClass="auto-style3" Height="187px" Width="213px" />
                            </td>
                            <td class="auto-style9"></td>
                            <td class="auto-style2"></td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:Label ID="Label11" runat="server" CssClass="Todo" Font-Names="Comic Sans MS" Text="Tipo de Pagina"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="tipo_pagina" runat="server" CssClass="lista" Font-Names="Comic Sans MS" ForeColor="Black">
                                    <asp:ListItem>Seleccione uno:</asp:ListItem>
                                    <asp:ListItem>Informativa</asp:ListItem>
                                    <asp:ListItem>Cuidado Animal</asp:ListItem>
                                    <asp:ListItem>Cuidado Medio Ambiente</asp:ListItem>
                                </asp:DropDownList>
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
                                <asp:TextBox ID="TbDescP" runat="server" CssClass="texboxdesc" Font-Names="Comic Sans MS" Height="128px" TextMode="MultiLine" Width="296px"></asp:TextBox>
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
                            <td class="auto-style11">
                                <asp:FileUpload ID="UploadP" runat="server" accept=".png,.jpg,.jpeg,.gif" CssClass="upload" Font-Names="Comic Sans MS" />
                            </td>
                            <td class="auto-style9">
                                <asp:Button ID="btnEnviar" runat="server" CssClass="boton" Font-Names="Comic Sans MS" OnClick="btnEnviar_Click" Text="Actualizar Imagen" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11">
                                <asp:Button ID="btnActualizar" runat="server" CssClass="boton" Font-Names="Comic Sans MS" OnClick="btnActualizar_Click" Text="Actualizar Pagina" />
                            </td>
                            <td class="auto-style9">
                                <asp:Label ID="LabelImg" runat="server"></asp:Label>
                                <asp:Button ID="btnBorrar" runat="server" CssClass="boton" Font-Names="Comic Sans MS" OnClick="btnBorrar_Click" Text="Borar Pagina" />
                            </td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style19" colspan="2">
                                <p class="auto-style28">
                                    <asp:ImageButton ID="IBRegresar1" runat="server" Height="52px" ImageUrl="~/Imagenes/regreso.png" OnClick="IBRegresar1_Click" Width="51px" />
                                    <asp:Label ID="Label49" runat="server" Font-Names="Comic Sans MS" Text="Regresar"></asp:Label>
                                </p>
                                <h1 class="auto-style18">CREAR PUBLICACION</h1>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style24">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label41" runat="server" CssClass="Todo" Font-Names="Comic Sans MS" Text="Titulo:"></asp:Label>
                            </td>
                            <td class="auto-style25">
                                <asp:TextBox ID="TbTituloP" runat="server" CssClass="texbox" Font-Names="Comic Sans MS"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style26">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label42" runat="server" CssClass="Todo" Font-Names="Comic Sans MS" Text="Contenido:"></asp:Label>
                            </td>
                            <td class="auto-style27">
                                <asp:TextBox ID="TbContP" runat="server" CssClass="auto-style17" Font-Names="Comic Sans MS" Height="51px" TextMode="MultiLine" Width="404px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style15">
                                <asp:FileUpload ID="UploadPubli" runat="server" accept=".png,.jpg,.jpeg,.gif" CssClass="upload" Font-Names="Comic Sans MS" />
                            </td>
                            <td class="auto-style16"></td>
                        </tr>
                        <tr>
                            <td class="auto-style15">
                                <asp:Button ID="BtnGuardar" runat="server" CssClass="boton" Font-Names="Comic Sans MS" OnClick="BtnGuardar_Click" Text="Guardar Publicacion" />
                            </td>
                            <td class="auto-style16">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style21">
                                <table class="auto-styleP">
                                    <tr>
                                        <td class="auto-style18" colspan="2">
                                            <h1 class="text">CREAR EVENTO</h1>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13">
                                            <asp:Label ID="Label45" runat="server" CssClass="Todo" Font-Names="Comic Sans MS" Text="Fecha"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TbFecha" runat="server" CssClass="texbox" Font-Names="Comic Sans MS" TextMode="DateTimeLocal"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13">
                                            <asp:Label ID="Label46" runat="server" CssClass="Todo" Font-Names="Comic Sans MS" Text="Titulo:"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TbTituloEvento" runat="server" CssClass="texbox" Font-Names="Comic Sans MS"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13">
                                            <asp:Label ID="Label47" runat="server" CssClass="Todo" Font-Names="Comic Sans MS" Text="Se realizara:"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TbContEvento" runat="server" CssClass="auto-style17" Font-Names="Comic Sans MS" Height="71px" TextMode="MultiLine" Width="404px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13" rowspan="3">
                                            <asp:Button ID="BtnGuardarEvento" runat="server" CssClass="boton" Font-Names="Comic Sans MS" OnClick="BtnGuardarEvento_Click" Text="Guardar Evento" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="View4" runat="server">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style30" colspan="3">
                                <p class="text">
                                    <asp:ImageButton ID="IBRegresar3" runat="server" Height="52px" ImageUrl="~/Imagenes/regreso.png" OnClick="IBRegresar1_Click" Width="51px" />
                                    <asp:Label ID="Label51" runat="server" Font-Names="Comic Sans MS" Text="Regresar"></asp:Label>
                                </p>
                                <h1 class="auto-style29" >EDITAR PUBLICACION</h1>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style21">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label52" runat="server" CssClass="Todo" Font-Names="Comic Sans MS" Text="Titulo:"></asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:DropDownList ID="DropDownListPublicacion" runat="server" CssClass="lista" DataSourceID="SqlDataSource2" DataTextField="Titulo" DataValueField="Titulo" Font-Names="Comic Sans MS">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EcoAmigos %>" SelectCommand="SELECT [Titulo] FROM [Publicaciones] WHERE ([Nombre_Pag] = @Nombre_Pag)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="Nombre_Pag" SessionField="Nombre_Pag" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style21">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label53" runat="server" CssClass="Todo" Font-Names="Comic Sans MS" Text="Contenido:"></asp:Label>
                                <asp:Label ID="LabeltiP" runat="server" CssClass="Todo" Font-Names="Comic Sans MS" Text="Fecha" Visible="False"></asp:Label>
                                <asp:Label ID="Labelid" runat="server" CssClass="Todo" Font-Names="Comic Sans MS" Text="Fecha" Visible="False"></asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="TbContP0" runat="server" CssClass="auto-style17" Font-Names="Comic Sans MS" Height="60px" TextMode="MultiLine" Width="404px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style15">
                                <asp:Button ID="BtnGuardarPubli" runat="server" CssClass="boton" Font-Names="Comic Sans MS" OnClick="BtnGuardarPubli_Click" Text="Guardar Publicacion" />
                            </td>
                            <td class="auto-style16">
                                &nbsp;</td>
                            <td class="auto-style16">
                                <asp:Button ID="btnBorrarP" runat="server" CssClass="boton" Font-Names="Comic Sans MS" OnClick="btnBorrarP_Click" Text="Borar Publicacion" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style21">
                                <table class="auto-styleP">
                                    <tr>
                                        <td class="auto-style18" colspan="3">
                                            <h1 class="text">EDITAR EVENTO</h1>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13">
                                            <asp:Label ID="Label56" runat="server" CssClass="Todo" Font-Names="Comic Sans MS" Text="Titulo:"></asp:Label>
                                        </td>
                                        <td colspan="2">
                                            <asp:DropDownList ID="DropDownListTituloE" runat="server" CssClass="lista" DataSourceID="SqlDataSource1" DataTextField="Titulo" DataValueField="Titulo" Font-Names="Comic Sans MS">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EcoAmigos %>" SelectCommand="SELECT [Titulo] FROM [Eventos] WHERE ([Nombre_Pag] = @Nombre_Pag)">
                                                <SelectParameters>
                                                    <asp:SessionParameter Name="Nombre_Pag" SessionField="Nombre_Pag" Type="String" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13">
                                            <asp:Label ID="Label55" runat="server" CssClass="Todo" Font-Names="Comic Sans MS" Text="Fecha"></asp:Label>
                                        </td>
                                        <td colspan="2">
                                            <asp:TextBox ID="TbFecha0" runat="server" CssClass="texbox" Font-Names="Comic Sans MS" TextMode="DateTimeLocal"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13">
                                            <asp:Label ID="Labelti" runat="server" CssClass="Todo" Font-Names="Comic Sans MS" Text="Fecha" Visible="False"></asp:Label>
                                        </td>
                                        <td colspan="2">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13">
                                            <asp:Label ID="Label57" runat="server" CssClass="Todo" Font-Names="Comic Sans MS" Text="Se realizara:"></asp:Label>
                                        </td>
                                        <td colspan="2">
                                            <asp:TextBox ID="TbContEvento0" runat="server" CssClass="auto-style17" Font-Names="Comic Sans MS" Height="65px" TextMode="MultiLine" Width="404px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style23" rowspan="2">
                                            <asp:Button ID="BtnGuardarEventos" runat="server" CssClass="boton" Font-Names="Comic Sans MS" OnClick="BtnGuardarEventos_Click" Text="Guardar Evento" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style22">&nbsp;</td>
                                        <td class="auto-style22">
                                            <asp:Button ID="btnBorrarE" runat="server" CssClass="boton" Font-Names="Comic Sans MS" OnClick="btnBorrarE_Click" Text="Borar Evento" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                    </table>
                    <br />
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
