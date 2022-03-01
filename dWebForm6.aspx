<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="dWebForm6.aspx.cs" Inherits="EvidenceAsp.netdemo.dWebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
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
    </p>
<p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cnstringConnectionString %>" SelectCommand="SELECT * FROM [Fees] WHERE ([VrNo] = @VrNo)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="VrNo" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
<p>
        Ashad<br />
    </p>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="VrNo,sl" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="589px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="VrNo" HeaderText="VrNo" ReadOnly="True" SortExpression="VrNo" />
                    <asp:BoundField DataField="sl" HeaderText="sl" SortExpression="sl" ReadOnly="True" />
                    <asp:BoundField DataField="Studentid" HeaderText="Studentid" SortExpression="Studentid" />
                    <asp:BoundField DataField="headname" HeaderText="headname" SortExpression="headname" />
                    <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            <table class="nav-justified">
                <tr>
                    <td>Voucher NO</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Serial No</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Student ID</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="Id" DataValueField="Id">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:cnstringConnectionString %>" SelectCommand="SELECT DISTINCT [Id] FROM [student]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>Headname</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Amount</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="insert" />
                    </td>
                </tr>
            </table>
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="VrNo,sl" DataSourceID="SqlDataSource3" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="VrNo" HeaderText="VrNo" ReadOnly="True" SortExpression="VrNo" />
                    <asp:BoundField DataField="sl" HeaderText="sl" ReadOnly="True" SortExpression="sl" />
                    <asp:BoundField DataField="Studentid" HeaderText="Studentid" SortExpression="Studentid" />
                    <asp:BoundField DataField="headname" HeaderText="headname" SortExpression="headname" />
                    <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:cnstringConnectionString %>" DeleteCommand="DELETE FROM [Fees] WHERE [VrNo] = @original_VrNo AND [sl] = @original_sl AND (([Studentid] = @original_Studentid) OR ([Studentid] IS NULL AND @original_Studentid IS NULL)) AND (([headname] = @original_headname) OR ([headname] IS NULL AND @original_headname IS NULL)) AND (([amount] = @original_amount) OR ([amount] IS NULL AND @original_amount IS NULL))" InsertCommand="INSERT INTO [Fees] ([VrNo], [sl], [Studentid], [headname], [amount]) VALUES (@VrNo, @sl, @Studentid, @headname, @amount)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Fees] WHERE ([VrNo] = @VrNo)" UpdateCommand="UPDATE [Fees] SET [Studentid] = @Studentid, [headname] = @headname, [amount] = @amount WHERE [VrNo] = @original_VrNo AND [sl] = @original_sl AND (([Studentid] = @original_Studentid) OR ([Studentid] IS NULL AND @original_Studentid IS NULL)) AND (([headname] = @original_headname) OR ([headname] IS NULL AND @original_headname IS NULL)) AND (([amount] = @original_amount) OR ([amount] IS NULL AND @original_amount IS NULL))">
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
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="VrNo" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
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
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="VrNo,sl" DataSourceID="SqlDataSource3">
                <EditItemTemplate>
                    VrNo:
                    <asp:Label ID="VrNoLabel1" runat="server" Text='<%# Eval("VrNo") %>' />
                    <br />
                    sl:
                    <asp:Label ID="slLabel1" runat="server" Text='<%# Eval("sl") %>' />
                    <br />
                    Studentid:
                    <asp:TextBox ID="StudentidTextBox" runat="server" Text='<%# Bind("Studentid") %>' />
                    <br />
                    headname:
                    <asp:TextBox ID="headnameTextBox" runat="server" Text='<%# Bind("headname") %>' />
                    <br />
                    amount:
                    <asp:TextBox ID="amountTextBox" runat="server" Text='<%# Bind("amount") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    VrNo:
                    <asp:TextBox ID="VrNoTextBox" runat="server" Text='<%# Bind("VrNo") %>' />
                    <br />
                    sl:
                    <asp:TextBox ID="slTextBox" runat="server" Text='<%# Bind("sl") %>' />
                    <br />
                    Studentid:
                    <asp:TextBox ID="StudentidTextBox" runat="server" Text='<%# Bind("Studentid") %>' />
                    <br />
                    headname:
                    <asp:TextBox ID="headnameTextBox" runat="server" Text='<%# Bind("headname") %>' />
                    <br />
                    amount:
                    <asp:TextBox ID="amountTextBox" runat="server" Text='<%# Bind("amount") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    VrNo:
                    <asp:Label ID="VrNoLabel" runat="server" Text='<%# Eval("VrNo") %>' />
                    <br />
                    sl:
                    <asp:Label ID="slLabel" runat="server" Text='<%# Eval("sl") %>' />
                    <br />
                    Studentid:
                    <asp:Label ID="StudentidLabel" runat="server" Text='<%# Bind("Studentid") %>' />
                    <br />
                    headname:
                    <asp:Label ID="headnameLabel" runat="server" Text='<%# Bind("headname") %>' />
                    <br />
                    amount:
                    <asp:Label ID="amountLabel" runat="server" Text='<%# Bind("amount") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
            <br />
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="GridView1" EventName="SelectedIndexChanged" />
            <asp:AsyncPostBackTrigger ControlID="DetailsView1" EventName="ItemInserted" />
        </Triggers>
    </asp:UpdatePanel>
    <p>
    </p>
</asp:Content>
