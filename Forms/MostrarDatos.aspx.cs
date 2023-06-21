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
                           new { Alumno.id_alumno, Alumno.apellido, Alumno.nombre, Alumno.dni, Alumno.email };

            GridView_alumnos.DataSource = consulta;
            GridView_alumnos.DataBind();
        }


        //Metodo Seleccion columna
        protected void GridView_alumnos_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView_alumnos.EditIndex = e.NewEditIndex;
            conn = new SqlConnection(mi_Coneccion);
            conn.Open();
            db_context = new Data_db_InstitutoDataContext(conn);


            // Ejecuta la consulta al cargar la pagina.
            var consulta = from Alumno in db_context.Alumnos
                           select
                           new { Alumno.id_alumno, Alumno.apellido, Alumno.nombre, Alumno.dni, Alumno.email };

            GridView_alumnos.DataSource = consulta;
            GridView_alumnos.DataBind();
        }


        //Metodo Editar
        protected void GridView_alumnos_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView_alumnos.DataKeys[e.RowIndex].Value.ToString());
            string nombre = ((TextBox)GridView_alumnos.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string apellido = ((TextBox)GridView_alumnos.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string dni = ((TextBox)GridView_alumnos.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string email = ((TextBox)GridView_alumnos.Rows[e.RowIndex].Cells[4].Controls[0]).Text;

            SqlCommand cmd = new SqlCommand("UPDATE Alumnos SET nombre='"+nombre+"', apellido='"+apellido+"', dni='"+dni+"', email='"+email+"'", conn);
            
            
            var consulta = from Alumno in db_context.Alumnos
                           select
                           new { Alumno.id_alumno, Alumno.apellido, Alumno.nombre, Alumno.dni, Alumno.email };

            GridView_alumnos.DataSource = consulta;
            GridView_alumnos.DataBind();
 

        }

        protected void btn_enviar_Coment_Click(object sender, EventArgs e)
        {
            /*---------------------------------- */
            Comentario comentario = new Comentario();

            comentario.comentario1 = Txt_Comentario.Text;
            comentario.fk_alumno = Convert.ToInt32(txtId.Text);

            db_context.Comentarios.InsertOnSubmit(comentario);
            db_context.SubmitChanges();

            Response.Redirect("ListadoComentarios.aspx");

        }
    }
}