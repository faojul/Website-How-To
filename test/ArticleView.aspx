<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ArticleView.aspx.cs" Inherits="ArticleView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <pre>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
         </pre>
    </div>
        <p contenteditable="inherit" draggable="false" lang="en-us" role="article">
            <pre>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </pre>
        </p>
    </form>
</body>
</html>
