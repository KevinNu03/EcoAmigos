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
    public partial class Login_Usu : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=EcoAmigos;Integrated Security=True");
        SqlDataReader dr = null;
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Id_Usuario"] = null;
        }
        public static string Encriptar(string _cadenaAencriptar)
        {
            string result = string.Empty;
            byte[] encryted = System.Text.Encoding.Unicode.GetBytes(_cadenaAencriptar);
            result = Convert.ToBase64String(encryted);
            return result;
        }

        protected void BtnIngresar_Click(object sender, EventArgs e)
        {
            if (TbUsuario.Text != "" && TbContraseña.Text != "")
            {
                cmd = new SqlCommand("SELECT * FROM Usuario WHERE Usuario = '" + Encriptar(TbUsuario.Text.ToUpper()) + "'", conn);
                conn.Open();

                try
                {
                    dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        string contraseña = GetSHA256(TbContraseña.Text);
                        if (dr["Contraseña"].ToString() == contraseña)
                        {
                            Session["Id_Usuario"] = dr["Documento"].ToString();
                            Response.Redirect("Inicio_Usu.aspx");
                        }
                        else
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Contraseña Incorrecta!!');", true);
                        }
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('El usuario no esta registrado!!');", true);
                    }
                }
                catch(Exception ex)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + ex + "');", true);
                }
                finally
                {
                    conn.Close();
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Faltan Datos!!');", true);
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

        protected void BtnRegistrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro.aspx");
        }

        protected void BtnContraseña_Click(object sender, EventArgs e)
        {

        }
    }
}