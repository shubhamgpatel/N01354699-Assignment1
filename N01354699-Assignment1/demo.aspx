<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="demo.aspx.cs" Inherits="N01354699_Assignment1.demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TxtNo" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
               ErrorMessage="Enter valid Phone number" ControlToValidate="TxtNo" 
                ValidationExpression="^\(?([0-9]{3})\)?[-.●]?([0-9]{3})[-.●]?([0-9]{4})$" >

            </asp:RegularExpressionValidator>
            
            
        </div><br />
        
            <asp:TextBox ID="textt2" MaxLength="8"  runat="server"></asp:TextBox>
        <!--
            <asp:RegularExpressionValidator id="regular1" ControlToValidate="textt2" runat="server" errormessage="*"
                validationexpression="^\d+$">
            </asp:RegularExpressionValidator>-->
               
        <input type="submit" />
    </form>
</body>
</html>
