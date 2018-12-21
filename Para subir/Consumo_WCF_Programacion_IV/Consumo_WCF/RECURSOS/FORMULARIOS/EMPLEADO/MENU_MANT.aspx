<%@ Page Title="" Language="C#" MasterPageFile="~/RECURSOS/FORMULARIOS/EMPLEADO/EMPLEADO.Master" AutoEventWireup="true" CodeBehind="MENU_MANT.aspx.cs" Inherits="Consumo_WCF.RECURSOS.FORMULARIOS.EMPLEADO.MENU_MANT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container bg-light">
        <div class="row">
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
    </div>
</asp:Content>
