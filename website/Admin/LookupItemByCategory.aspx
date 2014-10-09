<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="LookupItemByCategory.aspx.cs" Inherits="Admin_LookupItemByCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="nav-justified">
        <tr>
            <td>
                <asp:Label ID="Category" runat="server" Text="Category"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="CategoryDropDown" runat="server" DataSourceID="CategoryDataSource" DataTextField="Description" DataValueField="MenuItems">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="CategoryDataSource" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ListCategorizedMenuItems" TypeName="eRestaurant.BLL.MenuController"></asp:ObjectDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="ViewItem" runat="server">View Items</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ItemDataSource">
                    <Columns>
                        <asp:BoundField DataField="ItemID" HeaderText="ItemID" SortExpression="ItemID" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        <asp:BoundField DataField="CurrentPrice" HeaderText="CurrentPrice" SortExpression="CurrentPrice" />
                        <asp:BoundField DataField="CurrentCost" HeaderText="CurrentCost" SortExpression="CurrentCost" />
                        <asp:CheckBoxField DataField="Active" HeaderText="Active" SortExpression="Active" />
                        <asp:BoundField DataField="Calories" HeaderText="Calories" SortExpression="Calories" />
                        <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
                        <asp:BoundField DataField="MenuCategoryID" HeaderText="MenuCategoryID" SortExpression="MenuCategoryID" />
                    </Columns>
                </asp:GridView>
                <asp:ObjectDataSource ID="ItemDataSource" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="LookupItemByCategory" TypeName="eRestaurant.BLL.MenuController">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="CategoryDropDown" Name="MenuCategoryID" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

