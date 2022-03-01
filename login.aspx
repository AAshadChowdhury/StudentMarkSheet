<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="EvidenceAsp.netdemo.login" %>

<%@ Register src="WebUserControl1.ascx" tagname="WebUserControl1" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    
    <uc1:WebUserControl1 ID="WebUserControl11" runat="server" />
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUp.aspx">Register</asp:HyperLink>
  
    
</asp:Content>
