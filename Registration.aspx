<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
         <tr>
            <td>Name</td>
            <td><asp:TextBox ID="txtFanName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFanName" Display="None" ErrorMessage="Name Required"></asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td>Email</td>
            <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="None" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
             </td>
        </tr>
         <tr>
            <td>User Name</td>
            <td><asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUserName" Display="None" ErrorMessage="User Name Required"></asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td>Password</td>
            <td><asp:TextBox ID="txtPassword" runat="server"  TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword" Display="None" ErrorMessage="Password Required">password</asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td>Confirm Password</td>
            <td><asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirm" Display="None" ErrorMessage="Passwords do not match"></asp:CompareValidator>
             </td>
        </tr>
         <tr>
            <td>
                <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" /></td>
            <td>
                <asp:Label ID="lblErrorSuccess" runat="server" Text=""></asp:Label></td>
        </tr>
       
    </table>
        <asp:LinkButton ID="LbLogin" runat="server" 
PostBackUrl="~/Default.aspx">Log in</asp:LinkButton>
        <asp:ValidationSummary ID="ValidationSummary2" runat="server" />
    </div>
    </form>
</body>
</html>
