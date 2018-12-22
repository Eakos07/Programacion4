using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Consumo_WCF_DAL.Catalogos_Mantenimientos
{
    public class Cls_Departamento_DAL
    {
        private Int16 _iId_Departamento, _iId_Estado;
        private string _sNombre, _sDescripcion;

        public short iId_Departamento
        {
            get
            {
                return _iId_Departamento;
            }

            set
            {
                _iId_Departamento = value;
            }
        }

        public short iId_Estado
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
    }
}
