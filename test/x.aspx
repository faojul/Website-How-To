<%@ Page Language="C#" AutoEventWireup="true" CodeFile="x.aspx.cs" Inherits="x" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AJAX AutoComplete</title>
</head>
<body>
    <form id="form1" runat="server" >  
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div>   
    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
    <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" TargetControlID="txtCity"
         MinimumPrefixLength="1" EnableCaching="true" CompletionSetCount="1" CompletionInterval="1000"
         ServiceMethod="GetCity" >
    </asp:AutoCompleteExtender>
  
        <br />
  
        </div>
  
    </form>
</body>
</html>
