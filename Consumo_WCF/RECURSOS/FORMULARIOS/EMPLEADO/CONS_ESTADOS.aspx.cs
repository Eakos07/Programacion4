using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Consumo_WCF_DAL.Catalogos_Mantenimientos;
using Consumo_WCF_BLL.Catalogos_Mantenimientos;
using System.Data;

namespace Consumo_WCF.RECURSOS.FORMULARIOS.EMPLEADO
{

    public partial class CONS_ESTADOS : System.Web.UI.Page
    {
        Cls_Estados_BLL ObjBLL = new Cls_Estados_BLL();

        protected void Page_Load(object sender, EventArgs e)
        {
            string sMsjError = string.Empty;
            gvw_estados.DataSource = ObjBLL.Listar(txt_id_estado.Text, ref sMsjError);
            gvw_estados.DataBind();
        }

        protected void btn_filtrar_Click(object sender, EventArgs e)
        {
            string sMsjError = string.Empty;
            gvw_estados.DataSource = ObjBLL.Listar(txt_id_estado.Text, ref sMsjError);
            gvw_estados.DataBind();
        }

        protected void btn_buscar_Click(object sender, EventArgs e)
        {
            string sMsjError = string.Empty;
            gvw_estados.DataSource = ObjBLL.Listar(txt_id_estado.Text, ref sMsjError);
            gvw_estados.DataBind();
        }

        protected void gvw_estados_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void txt_id_estado_TextChanged(object sender, EventArgs e)
        {
            string sMsjError = string.Empty;
            gvw_estados.DataSource = ObjBLL.Listar(txt_id_estado.Text, ref sMsjError);
            gvw_estados.DataBind();
        }
    }
}