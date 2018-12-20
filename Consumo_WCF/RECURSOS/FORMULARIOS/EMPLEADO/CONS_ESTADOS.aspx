<%@ Page Title="" Language="C#" MasterPageFile="~/RECURSOS/FORMULARIOS/EMPLEADO/EMPLEADO.Master" AutoEventWireup="true" CodeBehind="CONS_ESTADOS.aspx.cs" Inherits="Consumo_WCF.RECURSOS.FORMULARIOS.EMPLEADO.CONS_ESTADOS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4 bg-secondary text-white">
                <div class="form-group text-center">
                    <h2><b>Consultas de estados</b></h2>
                </div>
                <br />
                <div class="form-group">
                    <label>Palabra clave: </label>
                    <asp:TextBox ID="txt_id_estado" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Button ID="btn_filtrar" class="btn boton" Text="Filtrar" runat="server" OnClick="btn_filtrar_Click"/>
                </div>
                <hr />
                <div class="form-group">
                    <asp:Button ID="btn_buscar" class="btn boton" Text="Ver todos" runat="server"/>
                </div>
            </div>
            <div class="col-sm-12 col-md-12 col-lg-8 col-xl-8 bg-light">
                <asp:GridView ID="gvw_estados" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
