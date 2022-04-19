<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="MasterPage1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        #content{
            width:400px;
            height:250px;
            margin:auto;
            border: solid 2px black;
        }
        .auto-style1 {
            width: 478px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="content" runat="server" class="auto-style1">

            <table style="width:100%;">
                <tr>
                    <td>Email : </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Mot de passe : </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnconnecte" runat="server" OnClick="btnconnecte_Click" Text="Se connecter" />
                    </td>
                    <td>&nbsp;&nbsp;</td>
                </tr>
            </table>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="email ou mot de passe incorrect" Visible="False"></asp:Label>
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Garder ma session ouverte" />
            &nbsp;
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Mot de passe oublier ?" Width="163px" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />

        </div>
    </form>
</body>
</html>
