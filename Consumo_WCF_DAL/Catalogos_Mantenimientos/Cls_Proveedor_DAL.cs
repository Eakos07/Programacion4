﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Consumo_WCF_DAL.Catalogos_Mantenimientos
{
    public class Cls_Proveedor_DAL
    {
        private string _sNombre_Proveedor, _sDescripcion;
        private int _iId_Proveedor, _iId_Estado;

        public string sNombre_Proveedor
        {
            get
            {
                return _sNombre_Proveedor;
            }

            set
            {
                _sNombre_Proveedor = value;
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

        public int iId_Proveedor
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
