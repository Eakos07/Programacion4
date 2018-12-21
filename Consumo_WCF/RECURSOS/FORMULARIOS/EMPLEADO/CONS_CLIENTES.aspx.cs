using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Consumo_WCF.SVC;
using System.Data;
using Consumo_WCF_DAL;
using Consumo_WCF_BLL;


namespace Consumo_WCF.RECURSOS.FORMULARIOS.EMPLEADO
{
    public partial class CONS_CLIENTES : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SVC.BDClient Obj_Servicio = new BDClient();
            string sMsjError = string.Empty;

            DataTable DT = Obj_Servicio.ListarDatos("SP_LISTAR_CLIENTES", ref sMsjError);

            if (sMsjError != string.Empty)
            {
                //MessageBox.Show("hay un error: " + sMsjError);

                gvw_clientes.DataSource = null;
            }

            else
            {
                gvw_clientes.DataSource = DT;
            }
        }

        protected void btn_buscar_Click(object sender, EventArgs e)
        {

        }
    }
}