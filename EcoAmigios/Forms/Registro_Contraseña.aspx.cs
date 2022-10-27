using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading.Tasks;
using System.Security.Cryptography;
using System.Text;
using EcoAmigios.Class;
using System.Data.SqlClient;

namespace EcoAmigios.Forms
{
    public partial class Registro_Contraseña : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=EcoAmigos;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public static string GetSHA256(string str)
        {
            SHA256 sha256 = SHA256Managed.Create();
            ASCIIEncoding encoding = new ASCIIEncoding();
            byte[] stream = null;
            StringBuilder sb = new StringBuilder();
            stream = sha256.ComputeHash(encoding.GetBytes(str));
            for (int i = 0; i < stream.Length; i++) sb.AppendFormat("{0:x2}", stream[i]);
            return sb.ToString();
        }

        protected void BtSiguiente_Click(object sender, EventArgs e)
        {
            if(TbContrasena.Text != "" || TbVerificacionC.Text != "")
            {
                if(TbContrasena.Text == TbVerificacionC.Text)
                {
                    try
                    {
                        string contraseña = GetSHA256(TbContrasena.Text);
                        conn.Open();
                        string query = "INSERT INTO Usuario (Tipo_Documento,Documento,Nombres,Apellidos,Correo,Telefono,Usuario,Contraseña) VALUES('" + Session["ID_Tipo_Usuario"].ToString() + "'," + int.Parse(Session["ID_Usuario"].ToString()) + ",'" + Session["Nombre_Usu"].ToString() + "','" + Session["Apellido_Usu"].ToString() + "','" + Session["Correo_Usu"].ToString() + "'," + int.Parse(Session["Telefono_Usu"].ToString()) + ",'" + Session["Usuario_Usu"].ToString() + "','" + contraseña + "')";
                        SqlCommand ejecutor = new SqlCommand(query, conn);
                        ejecutor.ExecuteNonQuery();

                        Session["ID_Tipo_Usuario"] = null;
                        Session["ID_Usuario"] = null;
                        Session["Nombre_Usu"] = null;
                        Session["Apellido_Usu"] = null;
                        Session["Correo_Usu"] = null;
                        Session["Telefono_Usu"] = null;
                        Session["Usuario_Usu"] = null;
                        Response.Redirect("Login_Usu.aspx");
                    }
                    catch(Exception ex)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('"+ ex +"');", true);
                    }
                    finally
                    {
                        conn.Close();
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Las contraseñas no coinciden');", true);
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Faltan Datos!!');", true);
            }
        }

        protected void BtRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro_Correo.aspx");
        }
    }
}