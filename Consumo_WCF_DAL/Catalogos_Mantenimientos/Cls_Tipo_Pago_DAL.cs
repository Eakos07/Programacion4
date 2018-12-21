using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Consumo_WCF_DAL.Catalogos_Mantenimientos
{
    public class Cls_Tipo_Pago_DAL
    {
        private string _sNombre_Tipo_Pago;
        private int _iId_Estado, _iId_Tipo_Pago;

        public string sNombre_Tipo_Pago
        {
            get
            {
                return _sNombre_Tipo_Pago;
            }

            set
            {
                _sNombre_Tipo_Pago = value;
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

        public int iId_Tipo_Pago
        {
            get
            {
                return _iId_Tipo_Pago;
            }

            set
            {
                _iId_Tipo_Pago = value;
            }
        }
    }
}
