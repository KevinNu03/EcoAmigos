<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="EcoAmigios.Forms.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="../CSS/Registro.css" rel="stylesheet" />
    <title>Registro</title>
    <style type="text/css">
        #formulario_login {
            width: 437px;
            height: 395px;
            margin-left: 820px;
            margin-right: 100px;
            margin-top: 75px;
        }
    </style>
</head>
<body class ="hg-ligt">
        <div class="wrapper">
                <div class="formcontent">
     </div>           
                      <form id="formulario_login" runat="server">
                          <div class="form-control">
                              
                              <asp:Label ID="LabelError" runat="server" ForeColor="Red" ></asp:Label>
                            <div>
               <asp:Label ID="lbTipoDocumento" runat="server" Text="Tipo de Documento" ></asp:Label>
               <asp:DropDownList ID="TipoDocumento" runat="server" CssClass="form-control">
                   <asp:ListItem>Seleccione uno...</asp:ListItem>
                   <asp:ListItem>Cedula de Ciudadania</asp:ListItem>
                   <asp:ListItem>Tarjeta de Identidad</asp:ListItem>
               </asp:DropDownList>
                            </div>
               <div>
                              
               <asp:Label ID="lbIdentificacion" runat="server" Text="Identificacion:" ></asp:Label>
               <asp:TextBox ID="TbIdentificacion" CssClass="form-control" runat="server" placeholder="Identificacion del Usuario"></asp:TextBox>

               <asp:Label ID="lbUsuario" runat="server" Text="Nombres:" ></asp:Label>
               <asp:TextBox ID="TbNombre" CssClass="form-control" runat="server" placeholder="Nombres del Usuario"></asp:TextBox>

               <asp:Label ID="lbAusuario" runat="server" Text="Apellidos:" ></asp:Label>
               <asp:TextBox ID="TbApellido" CssClass="form-control" runat="server" placeholder="Apellidos del Usuario"></asp:TextBox>

               <asp:Label ID="lbTusuario" runat="server" Text="Telefono:" ></asp:Label>
               <asp:TextBox ID="TbTelefono" CssClass="form-control" runat="server" placeholder="Telefono del Usuario"></asp:TextBox>

            </div>
            <div class="row">
               <asp:Button ID="ButtonSiguiente" cssclass =" btn btn-primary btn-dark" runat="server" Text="Siguiente" OnClick="ButtonSiguiente_Click" /><asp:Button ID="ButtonRegresar" cssclass =" btn btn-primary btn-dark" runat="server" Text="Regresar" />
            </div>

         </div>
       </form>          
   </div>
 </body>
</html>
