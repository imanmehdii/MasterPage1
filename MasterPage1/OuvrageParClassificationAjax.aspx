<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="OuvrageParClassificationAjax.aspx.cs" Inherits="MasterPage1.OuvrageParClassificationAjax" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            height: 179px;
        }
        .auto-style6 {
            width: 307px;
            height: 219px;
            margin-bottom: 7px;
        }
        .auto-style7 {
            height: 179px;
            width: 565px;
        }
        .auto-style8 {
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
&nbsp;<table style="width:100%;">
            <tr>
                <td class="auto-style7">
                    <img alt="ssss" class="auto-style6" longdesc="ssss" src="img/Sans%20titre.png" /></td>
                <td class="auto-style5">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<br />
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="x3" />
<br />
                            <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
<br />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p class="auto-style8" style="margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
        &nbsp;</p>
    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="LIBRUB" DataValueField="NUMRUB">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:librairieConnectionString %>" SelectCommand="SELECT * FROM [CLASSIFICATION]"></asp:SqlDataSource>
<br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="NUMOUVR" DataSourceID="SqlDataSource2" GridLines="Vertical" Width="945px">
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:librairieConnectionString %>" SelectCommand="SELECT * FROM [OUVRAGE] WHERE ([NUMRUB] = @NUMRUB)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="NUMRUB" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </ContentTemplate>
    </asp:UpdatePanel>
    <p class="auto-style8" style="margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
        Bienvenue sur l’<b>accueil des portails</b><span>&nbsp;</span>de<span>&nbsp;</span><a href="https://fr.wikipedia.org/wiki/Wikipédia" style="text-decoration: none; color: rgb(6, 69, 173); background: none;" title="Wikipédia">Wikipédia</a>. Les portails permettent de se repérer plus facilement dans Wikipédia grâce à des regroupements thématiques. Ils sont en général accessibles par des liens dans un<span>&nbsp;</span><a class="mw-redirect" href="https://fr.wikipedia.org/wiki/Wikipédia:Modèles/Liste_des_bandeaux/Portails_et_Catégories" style="text-decoration: none; color: rgb(6, 69, 173); background: none;" title="Wikipédia:Modèles/Liste des bandeaux/Portails et Catégories">bandeau</a><span>&nbsp;</span>en bas des articles. De nombreux portails sont gérés par un<span>&nbsp;</span><a href="https://fr.wikipedia.org/wiki/Projet:Accueil" style="text-decoration: none; color: rgb(6, 69, 173); background: none;" title="Projet:Accueil">projet</a><span>&nbsp;</span>qui en assure la maintenance. Il est possible de consulter la<span>&nbsp;</span><a href="https://fr.wikipedia.org/wiki/Wikipédia:Liste_des_portails" style="text-decoration: none; color: rgb(6, 69, 173); background: none;" title="Wikipédia:Liste des portails">liste 
        alphabétique des 1&nbsp;759 portails en français</a><span>&nbsp;</span>dont 31 ont été reconnus<span>&nbsp;</span><a href="https://fr.wikipedia.org/wiki/Wikipédia:Contenus_de_qualité/Justification_de_leur_promotion#Portails" style="text-decoration: none; color: rgb(6, 69, 173); background: none;" title="Wikipédia:Contenus de qualité/Justification de leur promotion">de qualité</a><span>&nbsp;</span>et 57 comme<span>&nbsp;</span><a href="https://fr.wikipedia.org/wiki/Wikipédia:Bons_contenus/Justification_de_leur_promotion#Portails" style="text-decoration: none; color: rgb(6, 69, 173); background: none;" title="Wikipédia:Bons contenus/Justification de leur promotion">bons portails</a>.</p>
    <p class="auto-style8" style="margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
        Les portails thématiques peuvent être retrouvés à partir des onze groupements suivants&nbsp;:</p>
    <p class="auto-style8" style="margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
        Bienvenue sur l’<b>accueil des portails</b><span>&nbsp;</span>de<span>&nbsp;</span><a href="https://fr.wikipedia.org/wiki/Wikipédia" style="text-decoration: none; color: rgb(6, 69, 173); background: none;" title="Wikipédia">Wikipédia</a>. Les portails permettent de se repérer plus facilement dans Wikipédia grâce à des regroupements thématiques. Ils sont en général accessibles par des liens dans un<span>&nbsp;</span><a class="mw-redirect" href="https://fr.wikipedia.org/wiki/Wikipédia:Modèles/Liste_des_bandeaux/Portails_et_Catégories" style="text-decoration: none; color: rgb(6, 69, 173); background: none;" title="Wikipédia:Modèles/Liste des bandeaux/Portails et Catégories">bandeau</a><span>&nbsp;</span>en bas des articles. De nombreux portails sont gérés par un<span>&nbsp;</span><a href="https://fr.wikipedia.org/wiki/Projet:Accueil" style="text-decoration: none; color: rgb(6, 69, 173); background: none;" title="Projet:Accueil">projet</a><span>&nbsp;</span>qui en assure la maintenance. Il est possible de consulter la<span>&nbsp;</span><a href="https://fr.wikipedia.org/wiki/Wikipédia:Liste_des_portails" style="text-decoration: none; color: rgb(6, 69, 173); background: none;" title="Wikipédia:Liste des portails">liste 
        alphabétique des 1&nbsp;759 portails en français</a><span>&nbsp;</span>dont 31 ont été reconnus<span>&nbsp;</span><a href="https://fr.wikipedia.org/wiki/Wikipédia:Contenus_de_qualité/Justification_de_leur_promotion#Portails" style="text-decoration: none; color: rgb(6, 69, 173); background: none;" title="Wikipédia:Contenus de qualité/Justification de leur promotion">de qualité</a><span>&nbsp;</span>et 57 comme<span>&nbsp;</span><a href="https://fr.wikipedia.org/wiki/Wikipédia:Bons_contenus/Justification_de_leur_promotion#Portails" style="text-decoration: none; color: rgb(6, 69, 173); background: none;" title="Wikipédia:Bons contenus/Justification de leur promotion">bons portails</a>.</p>
    <p class="auto-style8" style="margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
        Les portails thématiques peuvent être retrouvés à partir des onze groupements suivants&nbsp;:</p>
    <p class="auto-style8" style="margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
        &nbsp;</p>
    <p class="auto-style8" style="margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
        Bienvenue sur l’<b>accueil des portails</b><span>&nbsp;</span>de<span>&nbsp;</span><a href="https://fr.wikipedia.org/wiki/Wikipédia" style="text-decoration: none; color: rgb(6, 69, 173); background: none;" title="Wikipédia">Wikipédia</a>. Les portails permettent de se repérer plus facilement dans Wikipédia grâce à des regroupements thématiques. Ils sont en général accessibles par des liens dans un<span>&nbsp;</span><a class="mw-redirect" href="https://fr.wikipedia.org/wiki/Wikipédia:Modèles/Liste_des_bandeaux/Portails_et_Catégories" style="text-decoration: none; color: rgb(6, 69, 173); background: none;" title="Wikipédia:Modèles/Liste des bandeaux/Portails et Catégories">bandeau</a><span>&nbsp;</span>en bas des articles. De nombreux portails sont gérés par un<span>&nbsp;</span><a href="https://fr.wikipedia.org/wiki/Projet:Accueil" style="text-decoration: none; color: rgb(6, 69, 173); background: none;" title="Projet:Accueil">projet</a><span>&nbsp;</span>qui en assure la maintenance. Il est possible de consulter la<span>&nbsp;</span><a href="https://fr.wikipedia.org/wiki/Wikipédia:Liste_des_portails" style="text-decoration: none; color: rgb(6, 69, 173); background: none;" title="Wikipédia:Liste des portails">liste 
        alphabétique des 1&nbsp;759 portails en français</a><span>&nbsp;</span>dont 31 ont été reconnus<span>&nbsp;</span><a href="https://fr.wikipedia.org/wiki/Wikipédia:Contenus_de_qualité/Justification_de_leur_promotion#Portails" style="text-decoration: none; color: rgb(6, 69, 173); background: none;" title="Wikipédia:Contenus de qualité/Justification de leur promotion">de qualité</a><span>&nbsp;</span>et 57 comme<span>&nbsp;</span><a href="https://fr.wikipedia.org/wiki/Wikipédia:Bons_contenus/Justification_de_leur_promotion#Portails" style="text-decoration: none; color: rgb(6, 69, 173); background: none;" title="Wikipédia:Bons contenus/Justification de leur promotion">bons portails</a>.</p>
    <p class="auto-style8" style="margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
        Les portails thématiques peuvent être retrouvés à partir des onze groupements suivants&nbsp;:</p>
    <p style="margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
