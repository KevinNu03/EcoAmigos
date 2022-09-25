<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro_Ga_Correo.aspx.cs" Inherits="EcoAmigios.Forms.Registro_GA_Correo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="../CSS/RegistroGa1.css" rel="stylesheet" />
    <title>Registro</title>
    <style type="text/css">
        #formulario_login {
            width: 374px;
            height: 231px;
            margin-left: 66px;
            margin-right: 0px;
            margin-top: 0px;
            margin-bottom: 0px;
        }
    </style>
</head>
<body class ="hg-ligt">
        <div class="wrapper">
                <div class="formcontent">
     </div>           
                      <form id="formulario_login" runat="server">
                          <div class="form-control">
                             
               <div>
                              
               <asp:Label ID="lbCorreo" runat="server" Text="Correo del Grupo Ambiental:" ></asp:Label>
               <asp:TextBox ID="TbGCorreo" CssClass="form-control" runat="server" placeholder="Correo del Usuario" TextMode="Email"></asp:TextBox>
                   <asp:Button ID="BtnSiguiente" cssclass =" btn btn-primary btn-dark" runat="server" Text="Siguiente" OnClick="BtnSiguiente_Click" />
                   <br />
                   <asp:Button ID="btnRegresar" cssclass =" btn btn-primary btn-dark" runat="server" Text="Regresar" OnClick="btnRegresar_Click" />
                   <asp:Label ID="LabelCodigo" runat="server" Visible="False"></asp:Label>
            </div>

         </div>
       </form>          
   </div>
 </body>
</html>
