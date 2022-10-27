using EcoAmigios.Class;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcoAmigios.Forms
{
    public partial class Registro_Correo : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=EcoAmigos;Integrated Security=True");
        SqlDataReader dr = null;
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtSiguiente_Click(object sender, EventArgs e)
        {
            if (TbCorreo.Text != "")
            {
                cmd = new SqlCommand("Select * From Usuario Where Usuario = '" + TbUsuario.Text + "'", conn);
                conn.Open();
                try
                {
                    dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Este Usuario Ya Existe!!');", true);

                    }
                    else
                    {
                        Session["Usuario_Usu"] = TbUsuario.Text;
                        Session["Correo_Usu"] = TbCorreo.Text;
                        Response.Redirect("Registro_Contraseña.aspx");
                    }
                }
                catch (Exception ex)
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
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Ingrese un correo valido');", true);
            }
        }

        protected void BtRegresar_Click(object sender, EventArgs e)
        {
            Session["Correo_Usu"] = null;
            Response.Redirect("Registro.aspx");
        }
        
    }
}