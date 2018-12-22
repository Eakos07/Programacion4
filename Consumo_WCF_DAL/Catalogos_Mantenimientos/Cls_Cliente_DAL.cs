using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Consumo_WCF_DAL.Catalogos_Mantenimientos
{
    public class Cls_Cliente_DAL
    {
        private Int16 _iId_Cliente, _iId_Tipo_Cliente, _iId_Estado, _iId_Cuenta, _iCodigo_Pais;
        private string _sNombre, _sApellidos, _sEmail;

        public short iCodigo_Pais
        {
            get
            {
                return _iCodigo_Pais;
            }

            set
            {
                _iCodigo_Pais = value;
            }
        }

        public short iId_Cliente
        {
            get
            {
                return _iId_Cliente;
            }

            set
            {
                _iId_Cliente = value;
            }
        }

        public short iId_Cuenta
        {
            get
            {
                return _iId_Cuenta;
            }

            set
            {
                _iId_Cuenta = value;
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

        public short iId_Tipo_Cliente
        {
            get
            {
                return _iId_Tipo_Cliente;
            }

            set
            {
                _iId_Tipo_Cliente = value;
            }
        }

        public string sApellidos
        {
            get
            {
                return _sApellidos;
            }

            set
            {
                _sApellidos = value;
            }
        }

        public string sEmail
        {
            get
            {
                return _sEmail;
            }

            set
            {
                _sEmail = value;
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
