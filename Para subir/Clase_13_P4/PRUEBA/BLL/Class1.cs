using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAL;

namespace BLL
{
    public class Class1
    {
        public DataTable Listar(string sFiltro, ref string sMsjError)
        {
            SVC.BDClient Obj_Servicio = new SVC.BDClient();
            DataTable DT = new DataTable();            


            if (sFiltro.Trim() != string.Empty)
            {
                DT = Obj_Servicio.FiltrarDatos("SP_FILTRAR_ESTADOS", "@Descripcion", 
                                                SqlDbType.NVarChar, 
                                                sFiltro.Trim(), ref 
                                                sMsjError);
            }
            else
            {
                DT = Obj_Servicio.ListarDatos("SP_LISTAR_ESTADOS", ref sMsjError);
            }

            if (sMsjError == string.Empty)
            {
                return DT;
            }
            else
            {
                return null;
            }
        }


        public bool Insertar(string sFiltro, cls_Estados_DAL Obj_Estados_DAL, ref string sMsjError)
        {
            SVC.BDClient Obj_Servicio = new SVC.BDClient();
            DataTable DT = new DataTable();
            string sValorScalar = string.Empty;

            #region Creacion del DataTable de Parametros

                DataTable dtParametros = new DataTable("Parametros");
                dtParametros.Columns.Add("NombreParametro");
                dtParametros.Columns.Add("TipoDatoParametro");
                dtParametros.Columns.Add("ValorParametro");

            #endregion

            dtParametros.Rows.Add("@Descripcion", "3", Obj_Estados_DAL.sDesc);

            Obj_Servicio.InsertaDatosConIdentity("SP_INSERTAR_ESTADOS", dtParametros, 
                                                 ref sValorScalar, ref sMsjError);

            if (sMsjError == string.Empty)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
