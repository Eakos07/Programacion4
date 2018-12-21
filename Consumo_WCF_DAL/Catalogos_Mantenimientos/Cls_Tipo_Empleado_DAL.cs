using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Consumo_WCF_DAL.Catalogos_Mantenimientos
{
    public class Cls_Tipo_Empleado_DAL
    {
        private string _sNombre, _sDescripcion;
        private int _iId_Estado, _iId_Tipo_Empleado;

        #region variables publicas
        public string sNombre
        {
            get
            {
                return _sNombre;
            }

            set
            {
                _sNombre = value;
            }
        }

        public string sDescripcion
        {
            get
            {
                return _sDescripcion;
            }

            set
            {
                _sDescripcion = value;
            }
        }

        public int iId_Estado
        {
            get
            {
                return _iId_Estado;
            }

            set
            {
                _iId_Estado = value;
            }
        }

        public int iId_Tipo_Empleado
        {
            get
            {
                return _iId_Tipo_Empleado;
            }

            set
            {
                _iId_Tipo_Empleado = value;
            }
        }
        #endregion
    }
}
