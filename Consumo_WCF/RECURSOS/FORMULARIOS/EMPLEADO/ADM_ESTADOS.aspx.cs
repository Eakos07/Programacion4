using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Consumo_WCF_BLL.Catalogos_Mantenimientos;
using Consumo_WCF_DAL.Catalogos_Mantenimientos;
namespace Consumo_WCF.RECURSOS.FORMULARIOS.EMPLEADO
{
    
    public partial class ADM_ESTADOS : System.Web.UI.Page
    {
        Cls_Estados_BLL ObjBLL = new Cls_Estados_BLL();
        Cls_Estados_DAL ObjDAL = new Cls_Estados_DAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_agregar_Click(object sender, EventArgs e)
        {
            string sMsjError = string.Empty;
            ObjDAL.iId_Estado = Convert.ToInt16(txt_ID_estado.Text);
            ObjDAL.sDescripcion = txt_descripcion.Text.Trim();
            ObjBLL.Insertar(ObjDAL, ref sMsjError);
        }

        protected void btn_eliminar_Click(object sender, EventArgs e)
        {
            string sMsjError = string.Empty;
            ObjDAL.iId_Estado = Convert.ToInt16(txt_ID_estado.Text);
            ObjBLL.Eliminar(ObjDAL, ref sMsjError);
        }
    }
}