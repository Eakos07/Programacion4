<%@ Page Title="" Language="C#" MasterPageFile="~/RECURSOS/FORMULARIOS/EMPLEADO/EMPLEADO.Master" AutoEventWireup="true" CodeBehind="ADM_FACTURA.aspx.cs" Inherits="Consumo_WCF.RECURSOS.FORMULARIOS.EMPLEADO.ADM_FACTURA" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container border text-center boxForm bg-light">
        <div class="form-group text-center">
            <h2>Factura</h2>
        </div>
        <hr />
        <div class="form-group">
            <label>Numero factura : </label>
            <asp:Textbox id="txt_numero_factura" class="form-control bg-transparent" runat="server"></asp:Textbox>
        </div>
        <div class="form-group">
            <label>Monto :</label>
            <asp:TextBox ID="txt_monto" class="form-control bg-transparent" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>Fecha :</label>
            <asp:TextBox ID="txt_fecha" class="form-control bg-transparent" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>Id estado :</label>
            <asp:TextBox ID="txt_ID_estado" class="form-control bg-transparent" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>Tipo de pago :</label>
            <asp:TextBox ID="txt_tipo_pago" class="form-control bg-transparent" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>Orden de compra :</label>
            <asp:TextBox ID="txt_orden_compra" class="form-control bg-transparent" runat="server"></asp:TextBox>
        </div>
        <hr />
        <div class="form-group">
                <asp:Button ID="btn_agregar" class="btn boton" Text="Agregar" runat="server"/>
        </div>
        <div class="form-group">
                <asp:Button ID="btn_actualizar" class="btn boton" Text="Actualizar" runat="server"/>
        </div>
        <div class="form-group">
                <asp:Button ID="btn_eliminar" class="btn boton" Text="Eliminar" runat="server"/>
        </div>
    </div>
</asp:Content>
