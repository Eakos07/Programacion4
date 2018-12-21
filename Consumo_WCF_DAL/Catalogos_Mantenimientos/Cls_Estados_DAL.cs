using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Consumo_WCF_DAL.Catalogos_Mantenimientos
{
    public class Cls_Estados_DAL
    {
        private string _sDescripcion;
        private int _iId_Estado;

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
    }
}
