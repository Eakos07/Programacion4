using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Consumo_WCF.RECURSOS.FORMULARIOS.EMPLEADO
{
    public partial class MENU_MANT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_estados_consultas_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/ADM_ESTADOS.aspx");
        }

        protected void btn_estados_administracion_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/CONS_ESTADOS.aspx");
        }
    }
}