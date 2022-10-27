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
    public partial class Editar_Pagina : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=EcoAmigos;Integrated Security=True");
        SqlDataReader dr = null;
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            if(UploadP.HasFile == true)
            {
                LabelImg.Text = UploadP.FileName.ToString();
                ImageP.ImageUrl = "~/Imagenes/" + LabelImg.Text;

                cmd = new SqlCommand("UPDATE Pagina SET Img_pag = '" + LabelImg.Text + "'",conn);
                conn.Open();
                try
                {
                    cmd.ExecuteReader();
                    Response.Redirect("Inicio_Grupo.aspx");
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
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Seleccione la imagen a cambiar');", true);
            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            
            if ( TbDescP.Text != "" && tipo_pagina.SelectedIndex != 0)
            {
                cmd = new SqlCommand("UPDATE Pagina SET Descripcion_Pagina = '" + TbDescP.Text + "',Tipo_Pagina = '" + tipo_pagina.Text + "' WHERE Nombre_Pagina = '" + TbNombreP.Text + "'",conn);
                conn.Open();
                try
                {
                    cmd.ExecuteNonQuery();
                    Response.Redirect("Inicio_Grupo.aspx");
                }
                catch (Exception EX)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + EX + "');", true);
                }
                finally
                {
                    conn.Close();
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('No puede dejar espacios en blanco');", true);
            }
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            if(TbTituloP.Text != "" || TbContP.Text != "" || UploadPubli.HasFile == true)
            {
                cmd = new SqlCommand("SELECT * FROM Publicaciones WHERE Titulo = '" + TbTituloP.Text + "'", conn);
                conn.Open();
                try
                {
                    dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Ya Existe Esta Publicacion!!');", true);
                    }
                    else
                    {
                        conn.Close();
                        conn.Open();
                        string query = "insert into Publicaciones values('" + Session["Nombre_Pag"].ToString() + "','" + TbTituloP.Text + "','" + TbContP.Text + "','" + UploadPubli.FileName.ToString() + "')";
                        SqlCommand ejecutor = new SqlCommand(query, conn);
                        ejecutor.ExecuteNonQuery();
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
                    Response.Redirect("Inicio_Grupo.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Recuerda no dejar espacios en blanco, tampoco olvides cargar la imagen!!');", true);
            }
        }

        protected void BtnGuardarEvento_Click(object sender, EventArgs e)
        {
            if (TbTituloEvento.Text != "" || TbContEvento.Text != "" || TbFecha.Text != "")
            {
                cmd = new SqlCommand("SELECT * FROM Eventos WHERE Titulo = '" + TbTituloP.Text + "'", conn);
                conn.Open();
                try
                {
                    dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Este Evento Ya Existe!!');", true);
                    }
                    else
                    {
                        conn.Close();
                        conn.Open();
                        string query = "insert into Eventos values('" + Session["Nombre_Pag"].ToString() + "','" + TbFecha.Text + "','" + TbTituloEvento.Text + "','" + TbContEvento.Text + "')";
                        SqlCommand ejecutor = new SqlCommand(query, conn);
                        ejecutor.ExecuteNonQuery();
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
                Response.Redirect("Inicio_Grupo.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Recuerda no dejar espacios en blanco, tampoco olvides cargar la imagen!!');", true);
            }
        }

        protected void IBEPagina_Click(object sender, ImageClickEventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            cmd = new SqlCommand("Select * From Pagina Where Nombre_Pagina = '" + Session["Nombre_Pag"].ToString() + "'", conn);
            conn.Open();
            try
            {
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    tipo_pagina.Text = dr["Tipo_Pagina"].ToString();
                    TbNombreP.Text = dr["Nombre_Pagina"].ToString();
                    TbDescP.Text = dr["Descripcion_Pagina"].ToString();
                    ImageP.ImageUrl = "~/Imagenes/" + dr["Img_pag"].ToString();
                }
            }catch(Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + ex + "');", true);
            }
            finally
            {
                conn.Close();
            }
        }

        protected void IBEEvePubli_Click(object sender, ImageClickEventArgs e)
        {
            MultiView1.ActiveViewIndex = 3;
        }

        protected void IBRegresar_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Inicio_Grupo.aspx");
        }

        protected void IBCPublioEve_Click(object sender, ImageClickEventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }

        protected void IBRegresar1_Click(object sender, ImageClickEventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void BtnGuardarPubli_Click(object sender, EventArgs e)
        {
            LabeltiP.Text = DropDownListPublicacion.Text;
            SqlCommand cmd = new SqlCommand("UPDATE Publicaciones SET Contenido = '" + TbContP0.Text + "' WHERE Titulo = '" + LabeltiP.Text + "'", conn);
            conn.Open();

            try
            {
                cmd.ExecuteNonQuery();
                Response.Redirect("Inicio_Grupo.aspx");
            }
            catch (Exception EX)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + EX + "');", true);
            }
            finally
            {
                conn.Close();
            }
            
        }

        protected void BtnGuardarEventos_Click(object sender, EventArgs e)
        {
            Labelti.Text = DropDownListTituloE.Text;
            cmd = new SqlCommand("UPDATE Eventos SET Fecha = '" + TbFecha0.Text + "', Realizar = '" + TbContEvento0.Text + "' WHERE Titulo = '" + Labelti.Text + "'", conn);
            conn.Open();

            try
            {
                cmd.ExecuteNonQuery();
                Response.Redirect("Inicio_Grupo.aspx");
            }
            catch(Exception EX)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + EX + "');", true);
            }
            finally
            {
                conn.Close();
            }
        }

        protected void btnBorrar_Click(object sender, EventArgs e)
        {
            
            cmd = new SqlCommand("DELETE FROM Pagina WHERE Nombre_Pagina = '" + Session["Nombre_Pag"].ToString() + "'" +
                "DELETE FROM Eventos WHERE Nombre_Pag = '" + Session["Nombre_Pag"].ToString() + "'" +
                "DELETE FROM Publicaciones WHERE Nombre_Pag = '" + Session["Nombre_Pag"].ToString() + "'", conn);
            conn.Open();

            try
            {
                cmd.ExecuteNonQuery();
                Response.Redirect("Inicio_Grupo.aspx");

            }
            catch (Exception EX)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + EX + "');", true);
            }
            finally
            {
                conn.Close();
            }
        }

        protected void btnBorrarP_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM Publicaciones WHERE Titulo = '" + DropDownListPublicacion.Text + "'", conn);
            conn.Open();

            try
            {
                cmd.ExecuteNonQuery();
                Response.Redirect("Inicio_Grupo.aspx");
            }
            catch (Exception EX)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + EX + "');", true);
            }
            finally
            {
                conn.Close();
            }
        }

        protected void btnBorrarE_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM Eventos WHERE Titulo = '" + DropDownListTituloE.Text + "'", conn);
            conn.Open();

            try
            {
                cmd.ExecuteNonQuery();
                Response.Redirect("Inicio_Grupo.aspx");
            }
            catch (Exception EX)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + EX + "');", true);
            }
            finally
            {
                conn.Close();
            }
        }

        protected void IBVer_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Ver_Pagina.aspx");
        }
    }
}