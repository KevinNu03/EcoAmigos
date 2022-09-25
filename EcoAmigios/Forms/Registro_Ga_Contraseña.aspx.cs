using EcoAmigios.Class;
using MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcoAmigios.Forms
{
    public partial class Registro_Ga_Contraseña : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=EcoAmigos;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro_Ga_Correo.aspx");
        }

        protected void BtnSiguiente_Click(object sender, EventArgs e)
        {
            if(TbGContrasena.Text != "" || TbGVerificacionC.Text != "")
            {
                if(TbGVerificacionC.Text == TbGContrasena.Text)
                {
                    string contraseña = GetSHA256(TbGContrasena.Text);
                    conn.Open();
                    string query = "INSERT INTO GruAmbiental (Identificacion,Nombre_Gru,Tipo_Grupo,Telefono,Correo,Contraseña) VALUES(" + int.Parse(Session["ID_Grupo_Ambiental"].ToString()) + ",'" + Session["Nombre_Grupo"].ToString() + "','" + Session["Tipo_Grupo"].ToString() + "'," + int.Parse(Session["Telefono_Grupo"].ToString()) + ",'" + Session["Correo_Grupo"].ToString() + "','" + contraseña + "')";
                    SqlCommand ejecutor = new SqlCommand(query, conn);
                    ejecutor.ExecuteNonQuery();

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Mnesaje Alerta!", "alert('Se ha registrado correctamente')", true);
                    Session["ID_Grupo_Ambiental"] = null;
                    Session["Nombre_Grupo"] = null;
                    Session["Tipo_Grupo"] = null;
                    Session["Telefono_Grupo"] = null;
                    Session["Correo_Grupo"] = null;
                    Response.Redirect("Login_Ga.aspx");
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Las contraseñas no coinciden!!');", true);
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Debe llenar todos los campos!!');", true);
            }
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
    }
}