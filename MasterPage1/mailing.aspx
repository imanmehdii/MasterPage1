<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mailing.aspx.cs" Inherits="MasterPage1.mailing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td>Sujet : </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Distinataire : </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Message :
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
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="374px" Width="548px"></asp:TextBox>
                </td>
                <td></td>
            </tr>
        </table>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Envoyer" />
        </p>
    </form>
</body>
</html>
