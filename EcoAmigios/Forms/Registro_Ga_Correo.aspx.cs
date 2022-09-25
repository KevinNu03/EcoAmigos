using EcoAmigios.Class;
using MongoDB.Driver;
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
    public partial class Registro_GA_Correo : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=EcoAmigos;Integrated Security=True");
        SqlDataReader dr = null;
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Session["Correo_Grupo"] = null;
            Response.Redirect("Registro_Ga.aspx");
        }

        protected void BtnSiguiente_Click(object sender, EventArgs e)
        {
            if (TbGCorreo.Text != "" )
            {
                cmd = new SqlCommand("Select * From GruAmbiental Where Correo = '" + TbGCorreo.Text + "'", conn);
                conn.Open();

                try
                {
                    dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('El Correo Ya Esta Registrado!!');", true);
                    }
                    else
                    {
                        Session["Correo_Grupo"] = TbGCorreo.Text;
                        Response.Redirect("Registro_Ga_Contraseña.aspx");
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
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Ingrese el Correo!!');", true);
            }
        }
    }
}