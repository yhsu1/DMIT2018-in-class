<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ReservationsBySpecialEnevts.aspx.cs" Inherits="ReservationsBySpecialEnevts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="nav-justified">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SpecialEventDatasource" DataTextField="EventCode" DataValueField="EventCode">
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:ObjectDataSource ID="SpecialEventDatasource" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ListAllSpecialEvents" TypeName="eRestaurant.BLL.RestaurantAdminController"></asp:ObjectDataSource>
                <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ReservationDataSource">
                    <Columns>
                        <asp:BoundField DataField="EventCode" HeaderText="EventCode" SortExpression="EventCode" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        <asp:CheckBoxField DataField="Active" HeaderText="Active" SortExpression="Active" />
                    </Columns>
                </asp:GridView>
                <asp:ObjectDataSource ID="ReservationDataSource" runat="server"></asp:ObjectDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

