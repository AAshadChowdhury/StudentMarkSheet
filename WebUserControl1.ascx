<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="EvidenceAsp.netdemo.WebUserControl1" %>
<p>
User Name
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<br />
Password
<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
<br />
<asp:CheckBox ID="RememberMe" runat="server" Text="Remember Me" />
<br />
<asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
</p>
<br />
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
