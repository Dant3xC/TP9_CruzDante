using System;
using System.Data.OleDb;
using System.Web.UI;

namespace TP5_Delgado
{
    public partial class _Default : Page
    {
        string conexion;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Inicializa la cadena de conexión aquí donde tienes acceso al contexto de la página
                conexion = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/App_Data/Farmacia.mdb");

                using (OleDbConnection conn = new OleDbConnection(conexion))
                {
                    OleDbCommand cmd = new OleDbCommand();
                    OleDbDataReader dr;
                    string oledb = "select * from PRODUCTOS";

                    conn.Open();
                    cmd = new OleDbCommand(oledb, conn);
                    dr = cmd.ExecuteReader();

                    LbCarrito.DataValueField = "COD_PRODUCTO";
                    LbCarrito.DataTextField = "DETALLE";
                    LbCarrito.DataSource = dr;
                    LbCarrito.DataBind();

                    conn.Close();
                }
            }
        }

        protected void LbCarrito_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedValue = LbCarrito.SelectedValue;
            conexion = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/App_Data/Farmacia.mdb");

            using (OleDbConnection conn = new OleDbConnection(conexion))
            {
                // Obtener detalles del producto seleccionado
                OleDbCommand cmd = new OleDbCommand("SELECT * FROM PRODUCTOS WHERE COD_PRODUCTO = @codProducto", conn);
                cmd.Parameters.AddWithValue("@codProducto", selectedValue);

                conn.Open();
                OleDbDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    TxtDetalle.Text = dr["DETALLE"].ToString();
                    TxtPrecio.Text = dr["PRECIO"].ToString();
                    TxtPUnidad.Text = dr["PRECIO"].ToString();  
                    TxtCantidad.Text = dr["CANTIDAD"].ToString();
                }
                dr.Close();

                // Consulta para obtener las farmacias que solicitan el producto seleccionado
                cmd = new OleDbCommand(
                    "SELECT F.denominacion, P.cantidad " + // Corregido el nombre del campo
                    "FROM FARMACIAS F " +
                    "INNER JOIN PEDIDOS P ON F.IdFarmacia = P.IdFarmacia " +
                    "WHERE P.IdProducto = @codProducto", conn); // Corregido el nombre del campo
                cmd.Parameters.AddWithValue("@codProducto", selectedValue);

                dr = cmd.ExecuteReader();
                ddlFarmacias.DataValueField = "cantidad";  // Corregido el nombre del campo
                ddlFarmacias.DataTextField = "NOMBRE_FARMACIA";
                ddlFarmacias.DataSource = dr;
                ddlFarmacias.DataBind();

                conn.Close();
            }
        }
    }
}
