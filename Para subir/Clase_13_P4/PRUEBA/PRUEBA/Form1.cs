using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using PRUEBA.SVC;

namespace PRUEBA
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            SVC.BDClient Obj_Servicio = new BDClient();
            string sMsjError = string.Empty;

            DataTable DT = Obj_Servicio.ListarDatos("SP_LISTAR_ESTADOS", ref sMsjError);

            if (sMsjError != string.Empty)
            {
                MessageBox.Show("hay un error: " + sMsjError);

                dgv_Datos.DataSource = null;
            }

            else
            {
                dgv_Datos.DataSource = DT;
            }

        }

        private void txt_filtro_TextChanged(object sender, EventArgs e)
        {
            SVC.BDClient Obj_Servicio = new BDClient();
            DataTable DT = new DataTable();
            string sMsjError = string.Empty;


            if ( txt_filtro.Text.Trim() != string.Empty )
            {

                DT = Obj_Servicio.FiltrarDatos("SP_FILTRAR_ESTADOS", "@Descripcion", SqlDbType.NVarChar, txt_filtro.Text.Trim(), ref sMsjError);
            }
            else
            {
                DT = Obj_Servicio.ListarDatos("SP_LISTAR_ESTADOS", ref sMsjError);
            }


            if (sMsjError != string.Empty)
            {
                MessageBox.Show("hay un error: " + sMsjError);

                dgv_Datos.DataSource = null;
            }

            else
            {
                dgv_Datos.DataSource = DT;
            }
        }
    }
}
