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
    public partial class Registro : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=EcoAmigos;Integrated Security=True");
        SqlDataReader dr = null;
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSiguiente_Click(object sender, EventArgs e)
        {
            if (TipoDocumento.Text != "Seleccione uno...")
            {
                if (TbIdentificacion.Text != "" || TbNombre.Text != "" || TbApellido.Text != "" || TbTelefono.Text != "")
                {
                    cmd = new SqlCommand("Select * From Usuario Where Documento = '" + Encriptar(TbIdentificacion.Text) + "'", conn);
                    conn.Open();
                    try
                    {
                        dr = cmd.ExecuteReader();
                        if (dr.Read())
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Ya Existe Un Usuario Con Este Documento!!');", true);
                        }
                        else
                        {
                            Session["Nombre_Usu"] = TbNombre.Text;
                            Session["Apellido_Usu"] = TbApellido.Text;
                            Session["ID_Tipo_Usuario"] = TipoDocumento.Text;
                            Session["Telefono_Usu"] = TbTelefono.Text;
                            Session["ID_Usuario"] = TbIdentificacion.Text;

                            Response.Redirect("Registro_Correo.aspx");
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
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Faltan Datos');", true);
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Seleccione el tipo de documento!!');", true);
            }
        }

        protected void ButtonRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login_Usu.aspx");
        }

        public static string Encriptar(string _cadenaAencriptar)
        {
            string result = string.Empty;
            byte[] encryted = System.Text.Encoding.Unicode.GetBytes(_cadenaAencriptar);
            result = Convert.ToBase64String(encryted);
            return result;
        }
    }
}