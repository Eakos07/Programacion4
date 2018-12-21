using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Consumo_WCF_DAL.Catalogos_Mantenimientos
{
    public class Cls_Inventario_DAL
    {
        private string _sNombre_Inventario;
        private int _iId_Inventario, _iId_Estado, _iId_Empleado, _iCantidad;

        public string sNombre_Inventario
        {
            get
            {
                return _sNombre_Inventario;
            }

            set
            {
                _sNombre_Inventario = value;
            }
        }

        public int iId_Inventario
        {
            get
            {
                return _iId_Inventario;
            }

            set
            {
                _iId_Inventario = value;
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

        public int iId_Empleado
        {
            get
            {
                return _iId_Empleado;
            }

            set
            {
                _iId_Empleado = value;
            }
        }

        public int iCantidad
        {
            get
            {
                return _iCantidad;
            }

            set
            {
                _iCantidad = value;
            }
        }
    }
}
