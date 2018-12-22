using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Consumo_WCF_DAL.Catalogos_Mantenimientos
{
    public class Cls_Articulo_DAL
    {
        private Int16 _iId_Articulo, _iId_Proveedor, _iId_Categoria, _iId_Estado;
        private string _sNombre;

        public short iId_Articulo
        {
            get
            {
                return _iId_Articulo;
            }

            set
            {
                _iId_Articulo = value;
            }
        }

        public short iId_Categoria
        {
            get
            {
                return _iId_Categoria;
            }

            set
            {
                _iId_Categoria = value;
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

        public short iId_Proveedor
        {
            get
            {
                return _iId_Proveedor;
            }

            set
            {
                _iId_Proveedor = value;
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
