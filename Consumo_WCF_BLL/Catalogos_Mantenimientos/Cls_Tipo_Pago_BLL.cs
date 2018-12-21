using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Consumo_WCF_DAL.Catalogos_Mantenimientos;

namespace Consumo_WCF_BLL.Catalogos_Mantenimientos
{
    public class Cls_Tipo_Pago_BLL
    {
        public DataTable Listar(string sfiltro, ref string smsError)
        {
            SVC.BDClient Obj_Servicio = new SVC.BDClient();
            DataTable DT = new DataTable();

            if (sfiltro.Trim() != string.Empty)
            {
                DT = Obj_Servicio.FiltrarDatos("SP_FILTRAR_TIPO_PAGO", "@Nombre_Tipo_Pago",
                    SqlDbType.NVarChar, sfiltro.Trim(), ref smsError);
            }
            else
            {
                DT = Obj_Servicio.ListarDatos("SP_FILTRAR_TIPO_PAGO", ref smsError);
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

        public bool Insertar(string sFiltro, Cls_Tipo_Pago_DAL Obj_Cliente_DAL, ref string sMsjError)
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
            dtParametros.Rows.Add("@Id_Tipo_Empleado", "1", Obj_Cliente_DAL.iId_Tipo_Pago);
            dtParametros.Rows.Add("@Nombre_Tipo_Pago", "3", Obj_Cliente_DAL.sNombre_Tipo_Pago);
            dtParametros.Rows.Add("@Id_Estado", "1", Obj_Cliente_DAL.iId_Estado);

            Obj_Servicio.Inserta_DatosSinIdentity("SP_INSERTAR_TIPO_PAGO", dtParametros,
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

        public bool Modificar(string sFiltro, Cls_Tipo_Pago_DAL Obj_Cliente_DAL, ref string sMsjError)
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

            dtParametros.Rows.Add("@Id_Tipo_Empleado", "1", Obj_Cliente_DAL.iId_Tipo_Pago);
            dtParametros.Rows.Add("@Nombre_Tipo_Pago", "3", Obj_Cliente_DAL.sNombre_Tipo_Pago);
            dtParametros.Rows.Add("@Id_Estado", "1", Obj_Cliente_DAL.iId_Estado);

            Obj_Servicio.Modifica_Datos("SP_MODIFICAR_TIPO_PAGO", dtParametros,
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

        public bool Eliminar(string sFiltro, Cls_Tipo_Pago_DAL Obj_Cliente_DAL, ref string sMsjError)
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
            dtParametros.Rows.Add("@Id_Tipo_Pago", "1", Obj_Cliente_DAL.iId_Tipo_Pago);

            Obj_Servicio.Elimina_Datos("SP_ELIMINAR_TIPO_PAGO", dtParametros,
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
