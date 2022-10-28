<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro_Contraseña.aspx.cs" Inherits="EcoAmigios.Forms.Registro_Contraseña" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="../CSS/Registro1.css" rel="stylesheet" />
    <title>Registro</title>
    <style type="text/css">
        #formulario_login {
            width: 437px;
            height: 395px;
            margin-left: 820px;
            margin-right: 41px;
            margin-top: 75px;
        }
    </style>
</head>
<body class ="hg-ligt">
        <div class="wra">
                <div class="form">
     </div>           
                      <form id="formulario_login" runat="server">
                          <div class="form-control">
                              <asp:Label ID="LabelError" runat="server" ForeColor="Red" ></asp:Label>
               <div>
                              
               <asp:Label ID="lbContrasena" runat="server" Text="Contraseña:" ></asp:Label>
               <asp:TextBox ID="TbContrasena" CssClass="form-control" runat="server" placeholder="Contraseña" TextMode="Password" Rows="8"></asp:TextBox>

               <asp:Label ID="lbVerificacionC" runat="server" Text="Verificacion de Contraseña:" ></asp:Label>
               <asp:TextBox ID="TbVerificacionC" CssClass="form-control" runat="server" placeholder="Verificacion de Contraseña" TextMode="Password"></asp:TextBox>
            </div>
                              <asp:CheckBox ID="CBDatos" runat="server" Text="     Tratamiento de datos personales" />
            <div class="row">

                
                <br />

               <asp:Button ID="BtSiguiente" cssclass =" btn btn-primary btn-dark" runat="server" Text="Siguiente" OnClick="BtSiguiente_Click" />
               <asp:Button ID="BtRegresar" cssclass =" btn btn-primary btn-dark" runat="server" Text="Regresar" OnClick="BtRegresar_Click" />
            
            </div>

         </div>
       </form>          
   </div>
 </body>
</html>
