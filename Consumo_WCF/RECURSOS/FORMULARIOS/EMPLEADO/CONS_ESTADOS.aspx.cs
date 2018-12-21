using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Consumo_WCF_DAL.Catalogos_Mantenimientos;
using System.Data;

namespace Consumo_WCF.RECURSOS.FORMULARIOS.EMPLEADO
{
    public partial class CONS_ESTADOS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SVC.BDClient ObjServicio = new SVC.BDClient();
            string sMsjError = String.Empty;

            DataTable DT = ObjServicio.ListarDatos("SP_LISTAR_ESTADO", ref sMsjError);

            if (sMsjError != string.Empty)
            {
                gvw_estados.DataSource = null;
            }

            else
            {
                gvw_estados.DataSource = DT;
            }
        }

        protected void btn_filtrar_Click(object sender, EventArgs e)
        {
           
        }
        
    }
}