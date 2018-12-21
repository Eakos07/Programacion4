using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class cls_Estados_DAL
    {
        private int _iIdEstado;

        private string _sDesc;

        public int iIdEstado
        {
            get
            {
                return _iIdEstado;
            }

            set
            {
                _iIdEstado = value;
            }
        }

        public string sDesc
        {
            get
            {
                return _sDesc;
            }

            set
            {
                _sDesc = value;
            }
        }
    }
}
