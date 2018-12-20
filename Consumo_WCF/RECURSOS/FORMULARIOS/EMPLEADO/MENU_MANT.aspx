<%@ Page Title="" Language="C#" MasterPageFile="~/RECURSOS/FORMULARIOS/EMPLEADO/EMPLEADO.Master" AutoEventWireup="true" CodeBehind="MENU_MANT.aspx.cs" Inherits="Consumo_WCF.RECURSOS.FORMULARIOS.EMPLEADO.MENU_MANT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container bg-light">
        <div ID="Mant_estados" class="row">
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <asp:label runat="server">Estados</asp:label>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <div class="container">
                    <asp:Button ID="btn_estados_consultas" Text="Consultas" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_estados_consultas_Click"/>
                </div>
                <div class="container">
                    <asp:Button ID="btn_estados_administracion" Text="Administracion" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_estados_administracion_Click"/>
                </div>
            </div>
        </div>
        <hr />
        <div ID="Mant_articulos" class="row">
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <asp:label runat="server">Articulos</asp:label>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <div class="container">
                    <asp:Button ID="btn_articulos_consultas" Text="Consultas" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_articulos_consultas_Click"/>
                </div>
                <div class="container">
                    <asp:Button ID="btn_articulos_administracion" Text="Administracion" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_articulos_administracion_Click"/>
                </div>
            </div>
        </div>
        <hr />
        <div ID="Mant_categorias" class="row">
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <asp:label runat="server">Categorias</asp:label>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <div class="container">
                    <asp:Button ID="btn_categorias_consultas" Text="Consultas" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_categorias_consultas_Click"/>
                </div>
                <div class="container">
                    <asp:Button ID="btn_categorias_administracion" Text="Administracion" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_categorias_administracion_Click"/>
                </div>
            </div>
        </div>
        <hr />
        <div ID="Mant_compras" class="row">
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <asp:label runat="server">Compras</asp:label>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <div class="container">
                    <asp:Button ID="btn_compras_consultas" Text="Consultas" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_compras_consultas_Click"/>
                </div>
                <div class="container">
                    <asp:Button ID="btn_compras_administracion" Text="Administracion" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_compras_administracion_Click"/>
                </div>
            </div>
        </div>
        <hr />
        <div ID="Mant_cuentas" class="row">
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <asp:label runat="server">Cuentas</asp:label>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <div class="container">
                    <asp:Button ID="btn_cuentas_consultas" Text="Consultas" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_cuentas_consultas_Click"/>
                </div>
                <div class="container">
                    <asp:Button ID="btn_cuentas_administracion" Text="Administracion" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_cuentas_administracion_Click"/>
                </div>
            </div>
        </div>
        <hr />
        <div ID="Mant_departamentos" class="row">
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <asp:label runat="server">Departamentos</asp:label>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <div class="container">
                    <asp:Button ID="btn_departamentos_consultas" Text="Consultas" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_departamentos_consultas_Click"/>
                </div>
                <div class="container">
                    <asp:Button ID="btn_departamentos_administracion" Text="Administracion" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_departamentos_administracion_Click"/>
                </div>
            </div>
        </div>
        <hr />
        <div ID="Mant_empleados" class="row">
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <asp:label runat="server">Empleados</asp:label>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <div class="container">
                    <asp:Button ID="btn_empleados_consultas" Text="Consultas" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_empleados_consultas_Click"/>
                </div>
                <div class="container">
                    <asp:Button ID="btn_empleados_administracion" Text="Administracion" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_empleados_administracion_Click"/>
                </div>
            </div>
        </div>
        <hr />
        <div ID="Mant_facturas" class="row">
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <asp:label runat="server">Facturas</asp:label>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <div class="container">
                    <asp:Button ID="btn_facturas_consultas" Text="Consultas" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_facturas_consultas_Click"/>
                </div>
                <div class="container">
                    <asp:Button ID="btn_facturas_adminitracion" Text="Administracion" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_facturas_adminitracion_Click"/>
                </div>
            </div>
        </div>
        <hr />
        <div ID="Mant_inventarios" class="row">
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <asp:label runat="server">Inventarios</asp:label>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <div class="container">
                    <asp:Button ID="btn_inventarios_consultas" Text="Consultas" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_inventarios_consultas_Click"/>
                </div>
                <div class="container">
                    <asp:Button ID="btn_inventarios_adminitracion" Text="Administracion" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_inventarios_adminitracion_Click"/>
                </div>
            </div>
        </div>
        <hr />
        <div ID="Mant_monedas" class="row">
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <asp:label runat="server">Monedas</asp:label>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <div class="container">
                    <asp:Button ID="btn_monedas_consultas" Text="Consultas" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_monedas_consultas_Click"/>
                </div>
                <div class="container">
                    <asp:Button ID="btn_monedas_administracion" Text="Administracion" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_monedas_administracion_Click"/>
                </div>
            </div>
        </div>
        <hr />
        <div ID="Mant_paises" class="row">
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <asp:label runat="server">Paises</asp:label>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <div class="container">
                    <asp:Button ID="btn_paises_consultas" Text="Consultas" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_paises_consultas_Click"/>
                </div>
                <div class="container">
                    <asp:Button ID="btn_paises_administracion" Text="Administracion" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_paises_administracion_Click"/>
                </div>
            </div>
        </div>
        <hr />
        <div ID="Mant_roles" class="row">
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <asp:label runat="server">Roles</asp:label>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <div class="container">
                    <asp:Button ID="btn_roles_consultas" Text="Consultas" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_roles_consultas_Click"/>
                </div>
                <div class="container">
                    <asp:Button ID="btn_roles_administracion" Text="Administracion" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_roles_administracion_Click"/>
                </div>
            </div>
        </div>
        <hr />
        <div ID="Mant_tipos_empleados" class="row">
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <asp:label runat="server">Tipos de empleados</asp:label>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <div class="container">
                    <asp:Button ID="btn_tipos_empleados_consultas" Text="Consultas" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_tipos_empleados_consultas_Click"/>
                </div>
                <div class="container">
                    <asp:Button ID="btn_tipos_empleados_administracion" Text="Administracion" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_tipos_empleados_administracion_Click"/>
                </div>
            </div>
        </div>
        <hr />
        <div ID="Mant_tipos_pagos" class="row">
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <asp:label runat="server">Tipos de pagos</asp:label>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <div class="container">
                    <asp:Button ID="btn_tipos_pagos_consultas" Text="Consultas" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_tipos_pagos_consultas_Click"/>
                </div>
                <div class="container">
                    <asp:Button ID="btn_tipos_pagos_administracion" Text="Administracion" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_tipos_pagos_administracion_Click"/>
                </div>
            </div>
        </div>
        <hr />
        <div ID="Mant_clientes" class="row">
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <asp:label runat="server">Clientes</asp:label>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <div class="container">
                    <asp:Button ID="btn_clientes_consultas" Text="Consultas" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_clientes_consultas_Click"/>
                </div>
                <div class="container">
                    <asp:Button ID="btn_clientes_administracion" Text="Administracion" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_clientes_administracion_Click"/>
                </div>
            </div>
        </div>
        <hr />
        <div ID="Mant_proveedores" class="row">
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <asp:label runat="server">Proveedores</asp:label>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <div class="container">
                    <asp:Button ID="btn_proveedores_consultas" Text="Consultas" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_proveedores_consultas_Click"/>
                </div>
                <div class="container">
                    <asp:Button ID="btn_proveedores_adminitracion" Text="Administracion" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_proveedores_adminitracion_Click"/>
                </div>
            </div>
        </div>
        <hr />
        <div ID="Mant_tipos_clientes" class="row">
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <asp:label runat="server">Tipos de clientes</asp:label>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <div class="container">
                    <asp:Button ID="btn_tipos_clientes_consultas" Text="Consultas" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_tipos_clientes_consultas_Click"/>
                </div>
                <div class="container">
                    <asp:Button ID="btn_tipos_clientes_administracion" Text="Administracion" CssClass="btn btn-mantenimientos" runat="server" OnClick="btn_tipos_clientes_administracion_Click"/>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
