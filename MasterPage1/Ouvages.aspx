<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Ouvages.aspx.cs" Inherits="MasterPage1.Ouvages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Ouvrages</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="NUMOUVR" DataSourceID="SqlDataSource1" GridLines="Vertical">
    <AlternatingRowStyle BackColor="#DCDCDC" />
    <Columns>
        <asp:BoundField DataField="NUMOUVR" HeaderText="NUMOUVR" ReadOnly="True" SortExpression="NUMOUVR" />
        <asp:BoundField DataField="NOMOUVR" HeaderText="NOMOUVR" SortExpression="NOMOUVR" />
        <asp:BoundField DataField="ANNEEPARU" HeaderText="ANNEEPARU" SortExpression="ANNEEPARU" />
        <asp:BoundField DataField="NUMRUB" HeaderText="NUMRUB" SortExpression="NUMRUB" />
        <asp:BoundField DataField="NOMED" HeaderText="NOMED" SortExpression="NOMED" />
    </Columns>
    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#0000A9" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#000065" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:librairieConnectionString %>" SelectCommand="SELECT * FROM [OUVRAGE]"></asp:SqlDataSource>
</asp:Content>
