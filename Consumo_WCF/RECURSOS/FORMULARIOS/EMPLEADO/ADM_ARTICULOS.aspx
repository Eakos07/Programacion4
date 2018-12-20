<%@ Page Title="" Language="C#" MasterPageFile="~/RECURSOS/FORMULARIOS/EMPLEADO/EMPLEADO.Master" AutoEventWireup="true" CodeBehind="ADM_ARTICULOS.aspx.cs" Inherits="Consumo_WCF.RECURSOS.FORMULARIOS.EMPLEADO.ADM_ARTICULOS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container border text-center boxForm bg-light">
        <div class="form-group text-center">
            <h2>Articulos</h2>
        </div>
        <hr />
        <div class="form-group">
            <label>ID articulo : </label>
            <asp:Textbox id="txt_ID_articulo" class="form-control bg-transparent" runat="server"></asp:Textbox>
        </div>
        <div class="form-group">
            <label>Nombre :</label>
            <asp:TextBox ID="txt_nombre" class="form-control bg-transparent" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>Id estado :</label>
            <asp:TextBox ID="txt_ID_estado" class="form-control bg-transparent" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>Id proveedor :</label>
            <asp:TextBox ID="txt_ID_proveedor" class="form-control bg-transparent" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>Id categoria :</label>
            <asp:TextBox ID="txt_ID_categoria" class="form-control bg-transparent" runat="server"></asp:TextBox>
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
