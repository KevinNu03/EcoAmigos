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
        public static string Encriptar(string _cadenaAencriptar)
        {
            string result = string.Empty;
            byte[] encryted = System.Text.Encoding.Unicode.GetBytes(_cadenaAencriptar);
            result = Convert.ToBase64String(encryted);
            return result;
        }
        public static string DesEncriptar(string _cadenaAdesencriptar)
        {
            string result = string.Empty;
            byte[] decryted = Convert.FromBase64String(_cadenaAdesencriptar);
            result = System.Text.Encoding.Unicode.GetString(decryted);
            return result;
        }
        protected void Actualizar_Click(object sender, ImageClickEventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            conn.Open();
            cmd = new SqlCommand("SELECT * FROM Usuario WHERE Documento = '" + Session["Id_Usuario"] + "'",conn);
            try
            {
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {

                    ListDoc.Text = dr["Tipo_Documento"].ToString();
                    TbDocumento.Text = DesEncriptar(Session["Id_Usuario"].ToString());
                    TbNombres.Text = DesEncriptar(dr["Nombres"].ToString());
                    TbApellido.Text = DesEncriptar(dr["Apellidos"].ToString());
                    TbCorreo.Text = DesEncriptar(dr["Correo"].ToString());
                    TbTelefono.Text = DesEncriptar(dr["Telefono"].ToString());
                    TbUsuario.Text = DesEncriptar(dr["Usuario"].ToString());
                    
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
                    cmd = new SqlCommand("SELECT * FROM Usuario WHERE Usuario = '" + Encriptar(TbUsuario.Text) + "' and Documento = '" + Session["Id_Usuario"].ToString() + "'", conn);
                    try
                    {
                        dr = cmd.ExecuteReader();
                        if (dr.Read())
                        {
                            conn.Close();
                            conn.Open();
                            cmd = new SqlCommand("UPDATE Usuario SET Tipo_Documento = '" + ListDoc.Text + "', Nombres = '" + Encriptar(TbNombres.Text) + "', Apellidos = '" + Encriptar(TbApellido.Text) + "', Correo = '" + Encriptar(TbCorreo.Text) + "', Telefono = '" + Encriptar(TbTelefono.Text) + "', Usuario = '" + Encriptar(TbUsuario.Text) + "' WHERE Documento = '" + Session["Id_Usuario"].ToString() + "'", conn);
                            try
                            {
                                cmd.ExecuteReader();
                                MultiView1.ActiveViewIndex = -1;
                                btnActualizar.Visible = true;
                            }
                            catch (Exception ex)
                            {
                                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Mnesaje Alerta!", "alert('" + ex + "')", true);
                                Label15.Text = "" + ex;
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
                        Label15.Text = "" + ex;
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
                cmd = new SqlCommand("SELECT * FROM Usuario WHERE Documento = '" + Session["Id_Usuario"].ToString() + "'", conn);
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
                catch (Exception ex)
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