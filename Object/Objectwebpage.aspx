<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Objectwebpage.aspx.cs" Inherits="EvidenceAsp.netdemo.Object.Objectwebpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<div>
                <asp:GridView ID="GridView1" runat="server"
                DataSourceID="ObjectDataSource1" AllowSorting="True" AutoGenerateColumns="False">
                </asp:GridView>

            <asp:ObjectDataSource ID="ObjectDataSource1" ConflictDetection="CompareAllValues" runat="server" DataObjectTypeName="EvidenceAsp.netdemo.Object.foodMenuTB" DeleteMethod="DeleteFood" InsertMethod="InsertFood" OldValuesParameterFormatString="original_{0}" SelectMethod="GetAllItems" TypeName="EvidenceAsp.netdemo.Object.foodmenuob" UpdateMethod="Update">
                <UpdateParameters>
                    <asp:Parameter Name="orig_fmt" Type="Object" />
                    <asp:Parameter Name="fmt" Type="Object" />
                </UpdateParameters>
            </asp:ObjectDataSource>
        </div>
        <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="ObjectDataSource1" Height="50px" Width="402px" DefaultMode="Insert">
        </asp:DetailsView>--%>
      <div>
                <asp:GridView ID="GridView1" runat="server"
                DataSourceID="ObjectDataSource1" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id">
                <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="true" SortExpression="true" />
                <asp:BoundField DataField="food" HeaderText="FOOD" SortExpression="true" />
                <asp:BoundField DataField="items" HeaderText="ITEMS" SortExpression="true" />
                <asp:BoundField DataField="price" HeaderText="PRICE" SortExpression="true" />
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
                </Columns>
                </asp:GridView>

            <asp:ObjectDataSource ID="ObjectDataSource1" ConflictDetection="CompareAllValues" runat="server" DataObjectTypeName="EvidenceAsp.netdemo.Object.foodMenuTB" DeleteMethod="DeleteFood" InsertMethod="InsertFood" OldValuesParameterFormatString="orig_{0}" SelectMethod="GetAllItems" TypeName="EvidenceAsp.netdemo.Object.foodmenuob" UpdateMethod="Update">
                <UpdateParameters>
                    <asp:Parameter Name="orig_fmt" Type="Object" />
                    <asp:Parameter Name="fmt" Type="Object" />
                </UpdateParameters>
            </asp:ObjectDataSource>
        </div>
        <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="ObjectDataSource1" Height="50px" Width="402px" DefaultMode="Insert">
            <Fields>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
</asp:Content>
