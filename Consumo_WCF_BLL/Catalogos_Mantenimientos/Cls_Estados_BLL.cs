using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Consumo_WCF_DAL.Catalogos_Mantenimientos;
namespace Consumo_WCF_BLL.Catalogos_Mantenimientos
{
    public class Cls_Estados_BLL
    {

        public DataTable Listar(string sfiltro, ref string smsError)
        {
            SVC.BDClient Obj_Servicio = new SVC.BDClient();

            DataTable DT = new DataTable();

            if (sfiltro.Trim() != string.Empty)
            {
                DT = Obj_Servicio.FiltrarDatos("SP_FILTRAR_ESTADO", "@Descripcion",
                     SqlDbType.NVarChar, sfiltro.Trim(), ref smsError);
            }
            else
            {
                DT = Obj_Servicio.ListarDatos("SP_LISTAR_ESTADO", ref smsError);
            }

            if (smsError == string.Empty)
            {
                return DT;
            }
            else
            {
                return null;
            }
        }

        public bool Insertar( Cls_Estados_DAL Obj_Estados_DAL , ref string sMsjError)
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
            dtParametros.Rows.Add("@Id_Estado", "1", Obj_Estados_DAL.iId_Estado);
            dtParametros.Rows.Add("@Descripcion", "3", Obj_Estados_DAL.sDescripcion);

            Obj_Servicio.InsertaDatosConIdentity("SP_INSERTAR_ESTADO", dtParametros,
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

        public bool Modificar(string sFiltro, Cls_Estados_DAL Obj_Estados_DAL, ref string sMsjError)
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

            dtParametros.Rows.Add("@Id_Estado", "1", Obj_Estados_DAL.iId_Estado);
            dtParametros.Rows.Add("@Descripcion", "3", Obj_Estados_DAL.sDescripcion);

            Obj_Servicio.Modifica_Datos("SP_MODIFICAR_ESTADO", dtParametros,
                                                  ref sMsjError);

            if (sMsjError == string.Empty)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public bool Eliminar(Cls_Estados_DAL Obj_Estados_DAL, ref string sMsjError)
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
            dtParametros.Rows.Add("@Id_Estado", "1", Obj_Estados_DAL.iId_Estado);

            Obj_Servicio.Elimina_Datos("SP_ELIMINAR_ESTADO", dtParametros,
                                                  ref sMsjError);

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
