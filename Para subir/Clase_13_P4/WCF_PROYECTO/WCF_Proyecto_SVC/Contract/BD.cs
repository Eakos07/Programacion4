using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Data;
using WCF_Proyecto_BLL.BD;
using WCF_Proyecto_DAL.BD;

namespace WCF_Proyecto_SVC.Contract
{
    public class BD : Interface.IBD
    {
        public bool ConectarBD()
        {
            Cls_BD_BLL Obj_BD_BLL = new Cls_BD_BLL();
            Cls_BD_DAL Obj_BD_DAL = new Cls_BD_DAL();

            if (Obj_BD_BLL.ConectarBD() == string.Empty)
            {
                return true;
            }
            else
            {
                return false;
            }
        }


        public DataTable ListarDatos(string sNobreSP, ref string sMsjError)        
        {
            Cls_BD_BLL Obj_BD_BLL = new Cls_BD_BLL();            

            return Obj_BD_BLL.ExecuteDataAdapter(sNobreSP, "", SqlDbType.VarChar, "", ref sMsjError);
        }


        public DataTable FiltrarDatos(string sNobreSP, string sNombreParametro,
                                      SqlDbType DbType, string sValorParametro, ref string sMsjError)
        {
            Cls_BD_BLL Obj_BD_BLL = new Cls_BD_BLL();

            return Obj_BD_BLL.ExecuteDataAdapter(sNobreSP, sNombreParametro, 
                                                 DbType, sValorParametro, ref sMsjError);
        }



        public bool Inserta_DatosSinIdentity(string sNobreSP, DataTable dtParametros, ref string sMsjError)
        {
            Cls_BD_BLL Obj_BD_BLL = new Cls_BD_BLL();

            return Obj_BD_BLL.ExecuteNonQuery(sNobreSP, dtParametros, ref sMsjError);
        }


        public bool InsertaDatosConIdentity(string sNobreSP, DataTable dtParametros, 
                                            ref string sValorScalar, ref string sMsjError)
        {
            Cls_BD_BLL Obj_BD_BLL = new Cls_BD_BLL();

            return Obj_BD_BLL.ExecuteScalar(sNobreSP, dtParametros, ref sValorScalar, ref sMsjError);
        }

        public bool Modifica_Datos(string sNobreSP, DataTable dtParametros, ref string sMsjError)
        {
            Cls_BD_BLL Obj_BD_BLL = new Cls_BD_BLL();

            return Obj_BD_BLL.ExecuteNonQuery(sNobreSP, dtParametros, ref sMsjError);
        }

        public bool Elimina_Datos(string sNobreSP, DataTable dtParametros, ref string sMsjError)
        {
            Cls_BD_BLL Obj_BD_BLL = new Cls_BD_BLL();

            return Obj_BD_BLL.ExecuteNonQuery(sNobreSP, dtParametros, ref sMsjError);
        }
    }
}
