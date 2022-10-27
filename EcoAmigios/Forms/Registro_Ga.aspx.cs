using EcoAmigios.Class;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcoAmigios.Forms
{
    public partial class Registro_Ga : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=EcoAmigos;Integrated Security=True");
        SqlDataReader dr = null;
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSiguiente_Click(object sender, EventArgs e)
        {
            if(ListGAmbiental.SelectedIndex != 0)
            {
                if (TbGNombre.Text != "" || TbGTelefono.Text != "" || TbGIdentificacion.Text != "")
                {
                    cmd = new SqlCommand("Select * From GruAmbiental Where Nombre_Gru = '" + TbGNombre.Text + "' or Identificacion = '" + TbGIdentificacion.Text + "'", conn);
                    conn.Open();
                    try
                    {
                        dr = cmd.ExecuteReader();
                        if (dr.Read())
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Ya existe un grupo ambientalista con esta identificacion o con este nombre');", true);
                        }
                        else
                        {
                            Session["ID_Grupo_Ambiental"] = TbGIdentificacion.Text;
                            Session["Nombre_Grupo"] = TbGNombre.Text;
                            Session["Tipo_Grupo"] = ListGAmbiental.SelectedIndex;
                            Session["Telefono_Grupo"] = TbGTelefono.Text;
                            Response.Redirect("Registro_Ga_Correo.aspx");
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
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Escriba todos los datos!!');", true);
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Ingrese a que tipo de grupo pertenece!!!');", true);
            }
        }

        protected void BtnRegresar_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Login_Ga.aspx");
        }
    }
}