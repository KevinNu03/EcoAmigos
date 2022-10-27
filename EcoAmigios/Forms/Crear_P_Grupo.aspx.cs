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
    public partial class Crear_P_Grupo : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=EcoAmigos;Integrated Security=True");
        SqlDataReader dr = null;
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            TbGIdentificacion.Text = Session["Id_Grupo"].ToString();
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            if (ListGtipo.SelectedIndex != 0)
            {
                if (TbGNombre.Text != "" || TbGDescripcion.Text != "")
                {
                    cmd = new SqlCommand("Select * From Pagina Where Nombre_Pagina = '" + TbGNombre.Text + "'", conn);
                    conn.Open();

                    dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Ya Existe Una Pagina Con Este Nombre!!!');", true);
                    }
                    else
                    {
                        try
                        {
                            conn.Close();
                            conn.Open();
                            string query = "insert into Pagina values('" + int.Parse(Session["Id_Grupo"].ToString()) + "','" + ListGtipo.Text + "','" + TbGNombre.Text + "','" + TbGDescripcion.Text + "','" + FileLogo.FileName + "')";
                            SqlCommand ejecutor = new SqlCommand(query, conn);
                            ejecutor.ExecuteNonQuery();
                            Response.Redirect("Inicio_Grupo.aspx");

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
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Recuerde llenar todos los datos!!!');", true);
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Seleccione un tipo de pagina!!');", true);
            }
        }

        protected void BtnRegresar_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Inicio_Grupo.aspx");
        }
    }
}