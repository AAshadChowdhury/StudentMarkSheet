<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="EvidenceAsp.netdemo.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="container">
            UserName<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
            <br />
            Passowrd<asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" CssClass="btn btn-default" runat="server" OnClick="Button1_Click" Text="Sign Up" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>

</asp:Content>
