using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Data;

namespace WCF_Proyecto_SVC.Interface
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    public interface IBD
    {
        [OperationContract]
        bool ConectarBD();


        [OperationContract]
        DataTable ListarDatos(string sNobreSP, ref string sMsjError);


        [OperationContract]
        DataTable FiltrarDatos(string sNobreSP, string sNombreParametro,
                              SqlDbType DbType, string sValorParametro, 
                              ref string sMsjError);


        [OperationContract]
        bool Inserta_DatosSinIdentity(string sNobreSP, DataTable dtParametros, ref string sMsjError);


        [OperationContract]
        bool InsertaDatosConIdentity(string sNobreSP, DataTable dtParametros,
                                     ref string sValorScalar, ref string sMsjError);


        [OperationContract]
        bool Modifica_Datos(string sNobreSP, DataTable dtParametros, ref string sMsjError);


        [OperationContract]
        bool Elimina_Datos(string sNobreSP, DataTable dtParametros, ref string sMsjError);

    }
}
