using EcoAmigios.Class;
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
        public static string Encriptar(string _cadenaAencriptar)
        {
            string result = string.Empty;
            byte[] encryted = System.Text.Encoding.Unicode.GetBytes(_cadenaAencriptar);
            result = Convert.ToBase64String(encryted);
            return result;
        }

        protected void BtnSiguiente_Click(object sender, EventArgs e)
        {
            if (CBDatos.Checked == true)
            {
                if (TbGContrasena.Text != "" || TbGVerificacionC.Text != "")
                {
                    if (TbGVerificacionC.Text == TbGContrasena.Text)
                    {
                        string contraseña = GetSHA256(TbGContrasena.Text);
                        string id = Encriptar(Session["ID_Grupo_Ambiental"].ToString());
                        string Nombre_gru = Encriptar(Session["Nombre_Grupo"].ToString());
                        string Telefono = Encriptar(Session["Telefono_Grupo"].ToString());
                        string Correo = Encriptar(Session["Correo_Grupo"].ToString());
                        conn.Open();
                        string query = "INSERT INTO GruAmbiental (Identificacion,Nombre_Gru,Tipo_Grupo,Telefono,Correo,Contraseña) VALUES('" + id + "','" + Nombre_gru + "','" + Session["Tipo_Grupo"].ToString() + "','" + Telefono + "','" + Correo + "','" + contraseña + "')";
                        SqlCommand ejecutor = new SqlCommand(query, conn);
                        ejecutor.ExecuteNonQuery();
                        Session["ID_Grupo_Ambiental"] = null;
                        Session["Nombre_Grupo"] = null;
                        Session["Tipo_Grupo"] = null;
                        Session["Telefono_Grupo"] = null;
                        Session["Correo_Grupo"] = null;
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Se ha creado su cuenta satisfactoriamente!!');", true);
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
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Debes confirmar el tratamientos de tus datos para crear la cuenta');", true);
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