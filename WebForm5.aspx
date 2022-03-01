<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="EvidenceAsp.netdemo.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Information on Fees</h3>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="VrNo,sl" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
    <AlternatingItemTemplate>
        <td runat="server" style="background-color:#FFFFFF; color: #284775;">VrNo:
            <asp:Label ID="VrNoLabel" runat="server" Text='<%# Eval("VrNo") %>' />
            <br />sl:
            <asp:Label ID="slLabel" runat="server" Text='<%# Eval("sl") %>' />
            <br />Studentid:
            <asp:Label ID="StudentidLabel" runat="server" Text='<%# Eval("Studentid") %>' />
            <br />headname:
            <asp:Label ID="headnameLabel" runat="server" Text='<%# Eval("headname") %>' />
            <br />amount:
            <asp:Label ID="amountLabel" runat="server" Text='<%# Eval("amount") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
            </td>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <td runat="server" style="background-color:#999999;">VrNo:
            <asp:Label ID="VrNoLabel1" runat="server" Text='<%# Eval("VrNo") %>' />
            <br />sl:
            <asp:Label ID="slLabel1" runat="server" Text='<%# Eval("sl") %>' />
            <br />Studentid:
            <asp:TextBox ID="StudentidTextBox" runat="server" Text='<%# Bind("Studentid") %>' />
            <br />headname:
            <asp:TextBox ID="headnameTextBox" runat="server" Text='<%# Bind("headname") %>' />
            <br />amount:
            <asp:TextBox ID="amountTextBox" runat="server" Text='<%# Bind("amount") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </td>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <table style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
            <tr>
                <td>No data was returned.</td>
            </tr>
        </table>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <td runat="server" style="">VrNo:
            <asp:TextBox ID="VrNoTextBox" runat="server" Text='<%# Bind("VrNo") %>' />
            <br />sl:
            <asp:TextBox ID="slTextBox" runat="server" Text='<%# Bind("sl") %>' />
            <br />Studentid:
            <asp:TextBox ID="StudentidTextBox" runat="server" Text='<%# Bind("Studentid") %>' />
            <br />headname:
            <asp:TextBox ID="headnameTextBox" runat="server" Text='<%# Bind("headname") %>' />
            <br />amount:
            <asp:TextBox ID="amountTextBox" runat="server" Text='<%# Bind("amount") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            </td>
    </InsertItemTemplate>
    <ItemTemplate>
        <td runat="server" style="background-color:#E0FFFF; color: #333333;">VrNo:
            <asp:Label ID="VrNoLabel" runat="server" Text='<%# Eval("VrNo") %>' />
            <br />sl:
            <asp:Label ID="slLabel" runat="server" Text='<%# Eval("sl") %>' />
            <br />Studentid:
            <asp:Label ID="StudentidLabel" runat="server" Text='<%# Eval("Studentid") %>' />
            <br />headname:
            <asp:Label ID="headnameLabel" runat="server" Text='<%# Eval("headname") %>' />
            <br />amount:
            <asp:Label ID="amountLabel" runat="server" Text='<%# Eval("amount") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
            </td>
    </ItemTemplate>
    <LayoutTemplate>
        <table runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
            <tr runat="server" id="itemPlaceholderContainer">
                <td runat="server" id="itemPlaceholder">
                </td>
            </tr>
        </table>
       <tr runat="server">  
                <td runat="server">  
                    <asp:DataPager runat="server" PageSize="5" ID="DataPager1">  
                        <Fields>  
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False"></asp:NextPreviousPagerField>  
                            <asp:NumericPagerField></asp:NumericPagerField>  
                            <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False"></asp:NextPreviousPagerField>  
                        </Fields>  
                    </asp:DataPager>  
                </td>  
            </tr>  
    </LayoutTemplate>
    <SelectedItemTemplate>
        <td runat="server" style="background-color:#E2DED6; font-weight: bold;color: #333333;">VrNo:
            <asp:Label ID="VrNoLabel" runat="server" Text='<%# Eval("VrNo") %>' />
            <br />sl:
            <asp:Label ID="slLabel" runat="server" Text='<%# Eval("sl") %>' />
            <br />Studentid:
            <asp:Label ID="StudentidLabel" runat="server" Text='<%# Eval("Studentid") %>' />
            <br />headname:
            <asp:Label ID="headnameLabel" runat="server" Text='<%# Eval("headname") %>' />
            <br />amount:
            <asp:Label ID="amountLabel" runat="server" Text='<%# Eval("amount") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
            </td>
    </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:cnstringConnectionString %>" DeleteCommand="DELETE FROM [Fees] WHERE [VrNo] = @original_VrNo AND [sl] = @original_sl AND (([Studentid] = @original_Studentid) OR ([Studentid] IS NULL AND @original_Studentid IS NULL)) AND (([headname] = @original_headname) OR ([headname] IS NULL AND @original_headname IS NULL)) AND (([amount] = @original_amount) OR ([amount] IS NULL AND @original_amount IS NULL))" InsertCommand="INSERT INTO [Fees] ([VrNo], [sl], [Studentid], [headname], [amount]) VALUES (@VrNo, @sl, @Studentid, @headname, @amount)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Fees]" UpdateCommand="UPDATE [Fees] SET [Studentid] = @Studentid, [headname] = @headname, [amount] = @amount WHERE [VrNo] = @original_VrNo AND [sl] = @original_sl AND (([Studentid] = @original_Studentid) OR ([Studentid] IS NULL AND @original_Studentid IS NULL)) AND (([headname] = @original_headname) OR ([headname] IS NULL AND @original_headname IS NULL)) AND (([amount] = @original_amount) OR ([amount] IS NULL AND @original_amount IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_VrNo" Type="String" />
        <asp:Parameter Name="original_sl" Type="Int32" />
        <asp:Parameter Name="original_Studentid" Type="String" />
        <asp:Parameter Name="original_headname" Type="String" />
        <asp:Parameter Name="original_amount" Type="Decimal" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="VrNo" Type="String" />
        <asp:Parameter Name="sl" Type="Int32" />
        <asp:Parameter Name="Studentid" Type="String" />
        <asp:Parameter Name="headname" Type="String" />
        <asp:Parameter Name="amount" Type="Decimal" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Studentid" Type="String" />
        <asp:Parameter Name="headname" Type="String" />
        <asp:Parameter Name="amount" Type="Decimal" />
        <asp:Parameter Name="original_VrNo" Type="String" />
        <asp:Parameter Name="original_sl" Type="Int32" />
        <asp:Parameter Name="original_Studentid" Type="String" />
        <asp:Parameter Name="original_headname" Type="String" />
        <asp:Parameter Name="original_amount" Type="Decimal" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
