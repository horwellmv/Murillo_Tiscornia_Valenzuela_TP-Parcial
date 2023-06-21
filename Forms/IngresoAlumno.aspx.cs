using System;
using System.Data.SqlClient;

namespace Tp_Parcial_DesarrolloWeb
{
    public partial class DatosPersonales : System.Web.UI.Page
    {
        private readonly string mi_Coneccion = "Data Source=HORWELL-LENOVO-;Initial Catalog=db_Instituto;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";      // Poner datos del servidor 
        private SqlConnection conn;
        private Data_db_InstitutoDataContext db_context;

        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(mi_Coneccion);
            conn.Open();
            db_context = new Data_db_InstitutoDataContext(conn);

        }

        protected void btn_enviar_Click(object sender, EventArgs e)
        {
            try
            {
                Alumno alumno = new Alumno();

                alumno.nombre = nombreTextbox.Text;
                alumno.apellido = apellidoTextbox.Text;
                alumno.dni = dniTextbox.Text;
                alumno.email = emailTextbox.Text;
                alumno.fk_turno =Convert.ToInt32(turnoDropList.SelectedValue) ;

                db_context.Alumnos.InsertOnSubmit(alumno);
                db_context.SubmitChanges();

                Response.Redirect("MostrarDatos.aspx");
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}