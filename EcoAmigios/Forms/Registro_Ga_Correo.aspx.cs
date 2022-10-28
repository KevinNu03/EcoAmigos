using EcoAmigios.Class;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Twilio;
using Twilio.Rest.Api.V2010.Account;

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
        public static string Encriptar(string _cadenaAencriptar)
        {
            string result = string.Empty;
            byte[] encryted = System.Text.Encoding.Unicode.GetBytes(_cadenaAencriptar);
            result = Convert.ToBase64String(encryted);
            return result;
        }
        protected void BtnSiguiente_Click(object sender, EventArgs e)
        {
            if (TbGCorreo.Text != "" )
            {
                cmd = new SqlCommand("Select * From GruAmbiental Where Correo = '" + Encriptar(TbGCorreo.Text) + "'", conn);
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

        protected void Btnenvi_Click(object sender, EventArgs e)
        {
            int min = 1111;
            int max = 9999;

            Random rnd = new Random();
            int num = rnd.Next(min, max);
            LabelCodigo.Text = num.ToString();
            // Find your Account SID and Auth Token at twilio.com/console
            // and set the environment variables. See http://twil.io/secure
            string accountSid = "AC24e1dcdd26faa02c8b81dd813061b963";
            string authToken = "aa1e4207108a466913ee63fe5c3e396a";

            TwilioClient.Init(accountSid, authToken);

            var message = MessageResource.Create(
                body: "El codigo de verificaion es: " + num,
                from: new Twilio.Types.PhoneNumber("+19789046683"),
                to: new Twilio.Types.PhoneNumber("+573214574539")
            );

            Console.WriteLine(message.Sid);

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Verifica tu celular para ingresar el codigo!!');", true);
            BtEnviar.Visible = false;
            BtConfi.Visible = true;
        }

        protected void BtnConfi_Click(object sender, EventArgs e)
        {
            if (LabelCodigo.Text == TbConfi.Text)
            {
                BtConfi.Visible = false;
                BtnSiguiente.Enabled = true;
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Codigo Correcto!!');", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Codigo Erroneo, Porfavor verifica');", true);
            }
        }
    }
}