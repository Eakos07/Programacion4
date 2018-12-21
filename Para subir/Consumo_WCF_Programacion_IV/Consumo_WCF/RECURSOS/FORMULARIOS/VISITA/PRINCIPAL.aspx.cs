﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Consumo_WCF.ServiceReference1;
using System.Data;


namespace Consumo_WCF.RECURSOS.FORMULARIOS.VISITA
{
    public partial class PRINCIPAL : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ServiceReference1.BDClient Obj_Servicio = new BDClient();
            string sMsjError = string.Empty;

            DataTable DT = Obj_Servicio.ListarDatos("SP_LISTAR_ESTADO", ref sMsjError);

            if (sMsjError != string.Empty)
            {
                //MessageBox.Show("hay un error: " + sMsjError);

                gvw_productos.DataSource = null;
            }

            else
            {
                gvw_productos.DataSource = DT;
            }
        }

        protected void btn_productos_filtrar_Click(object sender, EventArgs e)
        {

        }
    }
}