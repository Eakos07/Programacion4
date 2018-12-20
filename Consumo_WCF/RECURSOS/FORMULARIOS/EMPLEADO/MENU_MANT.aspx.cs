using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Consumo_WCF.RECURSOS.FORMULARIOS.EMPLEADO
{
    public partial class MENU_MANT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_estados_consultas_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/CONS_ESTADOS.aspx");
        }

        protected void btn_estados_administracion_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/ADM_ESTADOS.aspx");
        }

        protected void btn_articulos_consultas_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/CONS_ARTICULOS.aspx");
        }

        protected void btn_articulos_administracion_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/ADM_ARTICULOS.aspx");
        }

        protected void btn_categorias_consultas_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/CONS_CATEGORIA.aspx");
        }

        protected void btn_categorias_administracion_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/ADM_CATEGORIA.aspx");
        }

        protected void btn_compras_consultas_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/CONS_COMPRAS.aspx");
        }

        protected void btn_compras_administracion_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/ADM_COMPRAS.aspx");
        }

        protected void btn_cuentas_consultas_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/CONS_CUENTAS.aspx");
        }

        protected void btn_cuentas_administracion_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/ADM_CUENTAS.aspx");
        }

        protected void btn_departamentos_consultas_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/CONS_DEPARTAMENTO.aspx");
        }

        protected void btn_departamentos_administracion_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/ADM_DEPARTAMENTO.aspx");
        }

        protected void btn_empleados_consultas_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/CONS_EMPLEADOS.aspx");
        }

        protected void btn_empleados_administracion_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/ADM_EMPLEADOS.aspx");
        }

        protected void btn_facturas_consultas_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/CONS_FACTURA.aspx");
        }

        protected void btn_facturas_adminitracion_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/ADM_FACTURA.aspx");
        }

        protected void btn_inventarios_consultas_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/CONS_INVENTARIO.aspx");
        }

        protected void btn_inventarios_adminitracion_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/ADM_INVENTARIO.aspx");
        }

        protected void btn_monedas_consultas_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/CONS_MONEDA.aspx");
        }

        protected void btn_monedas_administracion_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/ADM_MONEDA.aspx");
        }

        protected void btn_paises_consultas_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/CONS_PAIS.aspx");
        }

        protected void btn_paises_administracion_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/ADM_PAIS.aspx");
        }

        protected void btn_roles_consultas_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/CONS_ROLES.aspx");
        }

        protected void btn_roles_administracion_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/ADM_ROLES.aspx");
        }

        protected void btn_tipos_empleados_consultas_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/CONS_TIPO_EMPLEADO.aspx");
        }

        protected void btn_tipos_empleados_administracion_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/ADM_TIPO_EMPLEADO.aspx");
        }

        protected void btn_tipos_pagos_consultas_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/CONS_TIPOS_PAGO.aspx");
        }

        protected void btn_tipos_pagos_administracion_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/ADM_TIPO_PAGO.aspx");
        }

        protected void btn_clientes_consultas_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/CONS_CLIENTES.aspx");
        }

        protected void btn_clientes_administracion_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/ADM_CLIENTES.aspx");
        }

        protected void btn_proveedores_consultas_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/CONS_PROVEEDOR.aspx");
        }

        protected void btn_proveedores_adminitracion_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/ADM_PROVEEDORES.aspx");
        }

        protected void btn_tipos_clientes_consultas_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/CONS_TIPOS_CLIENTES.aspx");
        }

        protected void btn_tipos_clientes_administracion_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RECURSOS/FORMULARIOS/EMPLEADO/ADM_TIPOS_CLIENTES.aspx");
        }
    }
}