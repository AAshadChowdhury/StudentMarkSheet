<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="EvidenceAsp.netdemo.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
        .auto-style2 {
            width: 263px;
        }
        .auto-style3 {
            height: 20px;
            width: 263px;
        }
        .auto-style4 {
            width: 263px;
            height: 18px;
        }
        .auto-style5 {
            height: 18px;
        }
        .auto-style6 {
            width: 263px;
            height: 19px;
        }
        .auto-style7 {
            height: 19px;
        }
        .auto-style8 {
            display: block;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    
        All New Student Details<br />
    <br />
        <asp:GridView CssClass="table table-bordered table-condensed" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" ShowDeleteButton="True" ShowEditButton="True" CausesValidation="false"/>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Fee" HeaderText="Fee" SortExpression="Fee" />
                <asp:BoundField DataField="joindate" HeaderText="joindate" SortExpression="joindate" />
                <asp:ImageField ControlStyle-CssClass="img-responsive" DataImageUrlField="stringphoto">
                    <ControlStyle Height="100px" Width="100px" />
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cnstringConnectionString %>" SelectCommand="SELECT * FROM [student]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [student] WHERE [Id] = @original_Id AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Fee] = @original_Fee) OR ([Fee] IS NULL AND @original_Fee IS NULL)) AND (([joindate] = @original_joindate) OR ([joindate] IS NULL AND @original_joindate IS NULL)) AND (([stringphoto] = @original_stringphoto) OR ([stringphoto] IS NULL AND @original_stringphoto IS NULL))" InsertCommand="INSERT INTO [student] ([Id], [Name], [Fee], [joindate], [stringphoto]) VALUES (@Id, @Name, @Fee, @joindate, @stringphoto)" OldValuesParameterFormatString="original_{0}"  UpdateCommand="UPDATE [student] SET [Name] = @Name, [Fee] = @Fee, [joindate] = @joindate, [stringphoto] = @stringphoto WHERE [Id] = @original_Id AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Fee] = @original_Fee) OR ([Fee] IS NULL AND @original_Fee IS NULL)) AND (([joindate] = @original_joindate) OR ([joindate] IS NULL AND @original_joindate IS NULL)) AND (([stringphoto] = @original_stringphoto) OR ([stringphoto] IS NULL AND @original_stringphoto IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="String" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Fee" Type="Decimal" />
            <asp:Parameter Name="original_joindate" Type="DateTime" />
            <asp:Parameter Name="original_stringphoto" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Fee" Type="Decimal" />
            <asp:Parameter Name="joindate" Type="DateTime" />
            <asp:Parameter Name="stringphoto" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Fee" Type="Decimal" />
            <asp:Parameter Name="joindate" Type="DateTime" />
            <asp:Parameter Name="stringphoto" Type="String" />
            <asp:Parameter Name="original_Id" Type="String" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Fee" Type="Decimal" />
            <asp:Parameter Name="original_joindate" Type="DateTime" />
            <asp:Parameter Name="original_stringphoto" Type="String" />
        </UpdateParameters>


        </asp:SqlDataSource>
        Insert New student Details<br />
        <table class="table table-bordered table-condensed">
            <tr>
                <td class="auto-style2">Id</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="Form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Id is required" ForeColor="Red" Text="*" ControlToValidate="TextBox1" ></asp:RequiredFieldValidator>
<asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Id must be any number" Text="*" ForeColor="red" ControlToValidate="TextBox1" OnServerValidate="CustomValidator1_ServerValidate" ValidateEmptyText="True"></asp:CustomValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style6">Name</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="Form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name is required" ForeColor="Red" Text="*" ControlToValidate="TextBox2" ></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Username must be any digit or letter or space" ValidationExpression="^[a-zA-Z0-9\s]*$" ForeColor="red" Text="*" ControlToValidate="TextBox2"></asp:RegularExpressionValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style2">Fee</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="Form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Fee is required" ForeColor="Red" Text="*" ControlToValidate="TextBox3" ></asp:RequiredFieldValidator>
<asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Must be between 100 and 100000" ForeColor="Red" Text="*" MinimumValue="100" MaximumValue="100000" ControlToValidate="TextBox3" Type="Double"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">JoinDate</td>
                <td class="auto-style1">
                    <asp:Calendar ID="Calendar1" runat="server" Height="16px" Width="170px"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Photo</td>
                <td class="auto-style5">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Photo is required" ForeColor="Red" Text="*" ControlToValidate="FileUpload1" ></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn btn-primary btn-default" Text="Insert" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

                </td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
        </table>
    <br />
        <br />

   
    </asp:Content>

