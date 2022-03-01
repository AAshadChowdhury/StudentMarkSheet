<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="EvidenceAsp.netdemo.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Student result Details</h1>
    <p>
       
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Id" DataValueField="Id">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cnstringConnectionString %>" SelectCommand="SELECT DISTINCT [Id] FROM [student]"></asp:SqlDataSource>
<
       <div class="container">
<div class="row">
<div class="col-sm-4">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="VrNo,sl" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="VrNo" HeaderText="VrNo" ReadOnly="True" SortExpression="VrNo" />
                <asp:BoundField DataField="sl" HeaderText="sl" ReadOnly="True" SortExpression="sl" />
                <asp:BoundField DataField="StudentId" HeaderText="StudentId" SortExpression="StudentId" />
                <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                <asp:BoundField DataField="Mark" HeaderText="Mark" SortExpression="Mark" />
            </Columns>
        </asp:GridView>
    </div>
    
        <div class="col-sm-4">   
        <asp:DataList ID="DataList1" runat="server" DataKeyField="VrNo" DataSourceID="SqlDataSource2">
            <ItemTemplate>
                VrNo:
                <asp:Label ID="VrNoLabel" runat="server" Text='<%# Eval("VrNo") %>' />
                <br />
                sl:
                <asp:Label ID="slLabel" runat="server" Text='<%# Eval("sl") %>' />
                <br />
                StudentId:
                <asp:Label ID="StudentIdLabel" runat="server" Text='<%# Eval("StudentId") %>' />
                <br />
                Subject:
                <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
                <br />
                Mark:
                <asp:Label ID="MarkLabel" runat="server" Text='<%# Eval("Mark") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
            </div>
    <div class="col-sm-4">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="VrNo,sl" DataSourceID="SqlDataSource2" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <span style="background-color: #FAFAD2;color: #284775;">VrNo:
            <asp:Label ID="VrNoLabel" runat="server" Text='<%# Eval("VrNo") %>' />
            <br />
            sl:
            <asp:Label ID="slLabel" runat="server" Text='<%# Eval("sl") %>' />
            <br />
            StudentId:
            <asp:Label ID="StudentIdLabel" runat="server" Text='<%# Eval("StudentId") %>' />
            <br />
            Subject:
            <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
            <br />
            Mark:
            <asp:Label ID="MarkLabel" runat="server" Text='<%# Eval("Mark") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
<br /><br /></span>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="background-color: #FFCC66;color: #000080;">VrNo:
            <asp:Label ID="VrNoLabel1" runat="server" Text='<%# Eval("VrNo") %>' />
            <br />
            sl:
            <asp:Label ID="slLabel1" runat="server" Text='<%# Eval("sl") %>' />
            <br />
            StudentId:
            <asp:TextBox ID="StudentIdTextBox" runat="server" Text='<%# Bind("StudentId") %>' />
            <br />
            Subject:
            <asp:TextBox ID="SubjectTextBox" runat="server" Text='<%# Bind("Subject") %>' />
            <br />
            Mark:
            <asp:TextBox ID="MarkTextBox" runat="server" Text='<%# Bind("Mark") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            <br /><br /></span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">VrNo:
            <asp:TextBox ID="VrNoTextBox" runat="server" Text='<%# Bind("VrNo") %>' />
            <br />sl:
            <asp:TextBox ID="slTextBox" runat="server" Text='<%# Bind("sl") %>' />
            <br />StudentId:
            <asp:TextBox ID="StudentIdTextBox" runat="server" Text='<%# Bind("StudentId") %>' />
            <br />Subject:
            <asp:TextBox ID="SubjectTextBox" runat="server" Text='<%# Bind("Subject") %>' />
            <br />Mark:
            <asp:TextBox ID="MarkTextBox" runat="server" Text='<%# Bind("Mark") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            <br /><br /></span>
        </InsertItemTemplate>
        <ItemTemplate>
            <span style="background-color: #FFFBD6;color: #333333;">VrNo:
            <asp:Label ID="VrNoLabel" runat="server" Text='<%# Eval("VrNo") %>' />
            <br />
            sl:
            <asp:Label ID="slLabel" runat="server" Text='<%# Eval("sl") %>' />
            <br />
            StudentId:
            <asp:Label ID="StudentIdLabel" runat="server" Text='<%# Eval("StudentId") %>' />
            <br />
            Subject:
            <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
            <br />
            Mark:
            <asp:Label ID="MarkLabel" runat="server" Text='<%# Eval("Mark") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
<br /><br /></span>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="background-color: #FFCC66;font-weight: bold;color: #000080;">VrNo:
            <asp:Label ID="VrNoLabel" runat="server" Text='<%# Eval("VrNo") %>' />
            <br />
            sl:
            <asp:Label ID="slLabel" runat="server" Text='<%# Eval("sl") %>' />
            <br />
            StudentId:
            <asp:Label ID="StudentIdLabel" runat="server" Text='<%# Eval("StudentId") %>' />
            <br />
            Subject:
            <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
            <br />
            Mark:
            <asp:Label ID="MarkLabel" runat="server" Text='<%# Eval("Mark") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
<br /><br /></span>
        </SelectedItemTemplate>
    </asp:ListView>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:cnstringConnectionString %>" DeleteCommand="DELETE FROM [result] WHERE [VrNo] = @original_VrNo AND [sl] = @original_sl AND (([StudentId] = @original_StudentId) OR ([StudentId] IS NULL AND @original_StudentId IS NULL)) AND (([Subject] = @original_Subject) OR ([Subject] IS NULL AND @original_Subject IS NULL)) AND (([Mark] = @original_Mark) OR ([Mark] IS NULL AND @original_Mark IS NULL))" InsertCommand="INSERT INTO [result] ([VrNo], [sl], [StudentId], [Subject], [Mark]) VALUES (@VrNo, @sl, @StudentId, @Subject, @Mark)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [result] WHERE ([StudentId] = @StudentId)" UpdateCommand="UPDATE [result] SET [StudentId] = @StudentId, [Subject] = @Subject, [Mark] = @Mark WHERE [VrNo] = @original_VrNo AND [sl] = @original_sl AND (([StudentId] = @original_StudentId) OR ([StudentId] IS NULL AND @original_StudentId IS NULL)) AND (([Subject] = @original_Subject) OR ([Subject] IS NULL AND @original_Subject IS NULL)) AND (([Mark] = @original_Mark) OR ([Mark] IS NULL AND @original_Mark IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_VrNo" Type="String" />
                <asp:Parameter Name="original_sl" Type="Int32" />
                <asp:Parameter Name="original_StudentId" Type="String" />
                <asp:Parameter Name="original_Subject" Type="String" />
                <asp:Parameter Name="original_Mark" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="VrNo" Type="String" />
                <asp:Parameter Name="sl" Type="Int32" />
                <asp:Parameter Name="StudentId" Type="String" />
                <asp:Parameter Name="Subject" Type="String" />
                <asp:Parameter Name="Mark" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="StudentId" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="StudentId" Type="String" />
                <asp:Parameter Name="Subject" Type="String" />
                <asp:Parameter Name="Mark" Type="Int32" />
                <asp:Parameter Name="original_VrNo" Type="String" />
                <asp:Parameter Name="original_sl" Type="Int32" />
                <asp:Parameter Name="original_StudentId" Type="String" />
                <asp:Parameter Name="original_Subject" Type="String" />
                <asp:Parameter Name="original_Mark" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
</p>
    <h2> INsert New result details </h2>
        </div>
   </div>
    </div>
</asp:Content>
