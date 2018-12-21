using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace Proyecto_Progra4_DAL.Catalogos_Mantenimientos
{
    public class Cls_estados_DAL
    {
        private string _sDesc_Estado, _smsjError, _ssentencia;
        private int _iId_Estado;

        public string sDesc_Estado
        {
            get
            {
                return _sDesc_Estado;
            }

            set
            {
                _sDesc_Estado = value;
            }
        }

        public string smsjError
        {
            get
            {
                return _smsjError;
            }

            set
            {
                _smsjError = value;
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

        public string ssentencia
        {
            get
            {
                return _ssentencia;
            }

            set
            {
                _ssentencia = value;
            }
        }

        public System.Data.DataSet Ds = new System.Data.DataSet();

    }
}
