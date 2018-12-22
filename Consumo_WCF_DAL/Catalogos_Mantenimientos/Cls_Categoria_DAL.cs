using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Consumo_WCF_DAL.Catalogos_Mantenimientos
{
    public class Cls_Categoria_DAL
    {
        private Int16 _iId_Categoria, _iId_Estado, _iId_Articulo, _iId_Inventario;
        private string _sNombre, _sDescripcion;

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

        public short iId_Inventario
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
