<%@ Page Title="" Language="C#" MasterPageFile="~/RECURSOS/FORMULARIOS/EMPLEADO/EMPLEADO.Master" AutoEventWireup="true" CodeBehind="ADM_CLIENTES.aspx.cs" Inherits="Consumo_WCF.RECURSOS.FORMULARIOS.EMPLEADO.ADM_CLIENTES" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container border text-center boxForm bg-light">
        <div class="form-group text-center">
            <h2>Clientes</h2>
        </div>
        <hr />
        <div class="form-group">
            <label>ID cliente : </label>
            <asp:Textbox id="txt_ID_cliente" class="form-control bg-transparent" runat="server"></asp:Textbox>
        </div>
        <div class="form-group">
            <label>Nombre :</label>
            <asp:TextBox ID="txt_nombre" class="form-control bg-transparent" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>Apellidos :</label>
            <asp:TextBox ID="txt_apellidos" class="form-control bg-transparent" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>Direccion :</label>
            <asp:TextBox ID="txt_direccion" class="form-control bg-transparent" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>Email :</label>
            <asp:TextBox ID="txt_email" class="form-control bg-transparent" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>ID tipo cliente :</label>
            <asp:TextBox ID="txt_ID_tipo_cliente" class="form-control bg-transparent" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>ID estado :</label>
            <asp:TextBox ID="txt_estado" class="form-control bg-transparent" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>ID cuenta :</label>
            <asp:TextBox ID="txt_cuenta" class="form-control bg-transparent" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>Codigo pais :</label>
            <asp:TextBox ID="txt_cod_pais" class="form-control bg-transparent" runat="server"></asp:TextBox>
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
