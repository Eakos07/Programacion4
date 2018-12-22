using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Consumo_WCF_DAL.Catalogos_Mantenimientos;
using System.Data;

namespace Consumo_WCF_BLL.Catalogos_Mantenimientos
{
    public class Cls_Tipo_Cliente_BLL
    {
        public DataTable Listar(string sfiltro, ref string smsError)
        {
            SVC.BDClient Obj_Servicio = new SVC.BDClient();
            DataTable DT = new DataTable();

            if (sfiltro.Trim() != string.Empty)
            {
                DT = Obj_Servicio.FiltrarDatos("SP_FILTRAR_TIPO_CLIENTE", "@Nombre",
                    SqlDbType.NVarChar, sfiltro.Trim(), ref smsError);
            }
            else
            {
                DT = Obj_Servicio.ListarDatos("SP_LISTAR_TIPO_CLIENTE", ref smsError);
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

        public bool Insertar(string sFiltro, Cls_Tipo_Cliente_DAL Obj_Tipo_Cliente_DAL, ref string sMsjError)
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
            dtParametros.Rows.Add("@Id_Tipo_Cliente", "1", Obj_Tipo_Cliente_DAL.iId_Tipo_Cliente);
            dtParametros.Rows.Add("@Nombre", "3", Obj_Tipo_Cliente_DAL.sNombre);
            dtParametros.Rows.Add("@Descripcion", "3", Obj_Tipo_Cliente_DAL.sDescripcion);
            dtParametros.Rows.Add("@Id_Estado", "1", Obj_Tipo_Cliente_DAL.iId_Estado);

            Obj_Servicio.Inserta_DatosSinIdentity("SP_INSERTAR_TIPO_CLIENTE", dtParametros,
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

        public bool Modificar(string sFiltro, Cls_Tipo_Cliente_DAL Obj_Tipo_Cliente_DAL, ref string sMsjError)
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

            dtParametros.Rows.Add("@Id_Tipo_Cliente", "1", Obj_Tipo_Cliente_DAL.iId_Tipo_Cliente);
            dtParametros.Rows.Add("@Nombre", "3", Obj_Tipo_Cliente_DAL.sNombre);
            dtParametros.Rows.Add("@Descripcion", "3", Obj_Tipo_Cliente_DAL.sDescripcion);
            dtParametros.Rows.Add("@Id_Estado", "1", Obj_Tipo_Cliente_DAL.iId_Estado);

            Obj_Servicio.Modifica_Datos("SP_MODIFICAR_TIPO_CLIENTE", dtParametros,
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

        public bool Eliminar(string sFiltro, Cls_Tipo_Cliente_DAL Obj_Tipo_Cliente_DAL, ref string sMsjError)
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
            dtParametros.Rows.Add("@Id_Tipo_Cliente", "1", Obj_Tipo_Cliente_DAL.iId_Tipo_Cliente);

            Obj_Servicio.Elimina_Datos("SP_ELIMINAR_TIPO_CLIENTE", dtParametros,
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
