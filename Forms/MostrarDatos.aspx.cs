using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;



namespace Tp_Parcial_DesarrolloWeb
{
    public partial class Comentarios : System.Web.UI.Page
    {
        //Variables para coneccion y ABM
        private readonly string mi_Coneccion = "Data Source=HORWELL-LENOVO-;Initial Catalog=db_Instituto;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";      // Poner datos del servidor 
        private SqlConnection conn;
        private Data_db_InstitutoDataContext db_context;

        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(mi_Coneccion);
            conn.Open();
            db_context = new Data_db_InstitutoDataContext(conn);


            // Ejecuta la consulta al cargar la pagina.
            var consulta = from Alumno in db_context.Alumnos
                           select
                           new { Alumno.apellido, Alumno.nombre, Alumno.email };

            GridView_alumnos.DataSource = consulta;
            GridView_alumnos.DataBind();
        }

        protected void btn_enviar_Coment_Click(object sender, EventArgs e)
        {
            //recuperar el id del alumno para usarlo al agregar el comentario.

            Response.Redirect("ListadoComentarios.aspx");
        }
    }
}