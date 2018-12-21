using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Proyecto_Progra4_DAL.Catalogos_Mantenimientos;

namespace Proyecto_Progra4_BLL.Catalogos_Mantenimientos
{
    public class Cls_estados_BLL
    {
        public void listar_estados(ref Cls_estados_DAL Obj_estados_DAL)
        {
            Obj_estados_DAL.ssentencia = "SP_LISTAR_ESTADOS";
        }

        public void filtrar_estados(ref Cls_estados_DAL Obj_estados_DAL, string sfiltro)
        {
            Obj_estados_DAL.ssentencia = "SP_FILTRAR_ESTADOS";
        }

        public void modificar_estados(ref Cls_estados_DAL Obj_estados_DAL)
        {
            Obj_estados_DAL.ssentencia = "SP_MODIFICAR_ESTADOS";
        }

        public void insertar_estados(ref Cls_estados_DAL Obj_estados_DAL)
        {
            Obj_estados_DAL.ssentencia = "SP_INSERTAR_ESTADOS";
        }

        public void eliminar_estados(ref Cls_estados_DAL Obj_estados_DAL)
        {
            Obj_estados_DAL.ssentencia = "SP_ELIMINAR_ESTADOS";
        }
    }
}
