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
    public partial class Cuenta_Usu : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=EcoAmigos;Integrated Security=True");
        SqlDataReader dr = null;
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            btnGuardar.Visible = false;
        }

        protected void Regresar_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Inicio_Usu.aspx");
        }

        protected void C_contraseña_Click(object sender, ImageClickEventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void Actualizar_Click(object sender, ImageClickEventArgs e)
        {
            conn.Open();
            cmd = new SqlCommand("SELECT * FROM Usuario WHERE Documento = " + Session["Id_Usuario"].ToString() + "",conn);
            try
            {
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    ListDoc.Text = dr["Tipo_Documento"].ToString();
                    TbDocumento.Text = dr["Documento"].ToString();
                    TbNombres.Text = dr["Nombres"].ToString();
                    TbApellido.Text = dr["Apellidos"].ToString();
                    TbCorreo.Text = dr["Correo"].ToString();
                    TbTelefono.Text = dr["Telefono"].ToString();
                    TbUsuario.Text = dr["Usuario"].ToString();
                    MultiView1.ActiveViewIndex = 0;
                }
            }
            catch(Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Mnesaje Alerta!", "alert('" + ex + "')", true);
            }
            finally
            {
                conn.Close();
            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            btnGuardar.Visible = true;
            ListDoc.Enabled = true;
            TbNombres.ReadOnly = false;
            TbApellido.ReadOnly = false;
            TbCorreo.ReadOnly = false;
            TbTelefono.ReadOnly = false;
            TbDocumento.ReadOnly = false;
            btnActualizar.Visible = false;
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            if (ListDoc.SelectedIndex != 0)
            {
                if (TbDocumento.Text != "" || TbNombres.Text != "" || TbApellido.Text != "" || TbCorreo.Text != "" || TbUsuario.Text != "" )
                {
                    conn.Open();
                    cmd = new SqlCommand("SELECT * FROM Usuario WHERE Usuario = '" + TbUsuario.Text + "' and Documento = " + Session["Id_Usuario"].ToString() + "", conn);
                    try
                    {
                        dr = cmd.ExecuteReader();
                        if (dr.Read())
                        {
                            conn.Close();
                            conn.Open();
                            cmd = new SqlCommand("UPDATE Usuario SET Tipo_Documento = '" + ListDoc.Text + "', Nombres = '" + TbNombres.Text + "', Apellidos = '" + TbApellido.Text + "', Correo = '" + TbCorreo.Text + "', Telefono = " + int.Parse(TbTelefono.Text) + ", Usuario = '" + TbUsuario.Text + "' WHERE Documento = " + Session["Id_Usuario"].ToString() + "", conn);
                            try
                            {
                                cmd.ExecuteReader();
                                MultiView1.ActiveViewIndex = -1;
                                btnActualizar.Visible = true;
                            }
                            catch (Exception ex)
                            {
                                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Mnesaje Alerta!", "alert('" + ex + "')", true);
                            }
                            finally
                            {
                                conn.Close();
                            }
                        }
                        else
                        {
                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Mnesaje Alerta!", "alert('Este Usuario Ya Existe!!')", true);
                        }
                    }
                    catch(Exception ex)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Mnesaje Alerta!", "alert('" + ex + "')", true);
                    }
                    finally
                    {
                        conn.Close();
                    }
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Mnesaje Alerta!", "alert('Faltan Datos!!')", true);
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Mnesaje Alerta!", "alert('Seleccione un tipo de documento!!')", true);
                MultiView1.ActiveViewIndex = -1;
                btnActualizar.Visible = true;
            }
        }

        protected void btnCambiar_Click(object sender, EventArgs e)
        {
            string contraseña = GetSHA256(TbContraseñaA.Text);
            conn.Open();
            cmd = new SqlCommand("SELECT * FROM Usuario WHERE Documento = 123121",conn);
            try
            {
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    if (dr["Contraseña"].ToString() == contraseña)
                    {
                        if (TbContraseñaN.Text == TbContraseñaR.Text)
                        {
                            contraseña = GetSHA256(TbContraseñaN.Text);
                            conn.Close();
                            conn.Open();
                            cmd = new SqlCommand("UPDATE Usuario SET Contraseña = '" + contraseña + "' WHERE Documento = " + Session["Id_Usuario"].ToString() + "", conn);
                            try
                            {
                                cmd.ExecuteReader();
                                MultiView1.ActiveViewIndex = -1;
                            }
                            catch (Exception ex)
                            {
                                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Mnesaje Alerta!", "alert('" + ex + "')", true);
                            }
                            finally
                            {
                                conn.Close();
                            }
                        }
                        else
                        {
                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Mnesaje Alerta!", "alert('Las contraseñas nuevas no coinciden!!')", true);
                        }
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Mnesaje Alerta!", "alert('Verifica tu contraseña antigua!!')", true);
                    }
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Mnesaje Alerta!", "alert('No lo lee')", true);
                }
            }
            catch(Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Mnesaje Alerta!", "alert('" + ex + "')", true);
            }
            finally
            {
                conn.Close();
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