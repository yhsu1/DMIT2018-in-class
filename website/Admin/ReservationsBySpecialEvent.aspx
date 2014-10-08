<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ReservationsBySpecialEvent.aspx.cs" Inherits="Admin_ReservationsBySpecialEvent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="nav-justified">
        <tr>
            <td>
                <asp:Label ID="SpecialEvent" runat="server" Text="Special Event"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="SpecialEventsDropDown" runat="server" DataSourceID="SpecialEventDataSource" DataTextField="Description" DataValueField="EventCode">
                    <asp:ListItem Value="None">Select a special event</asp:ListItem>
                    <asp:ListItem>No event</asp:ListItem>
                </asp:DropDownList>
                <asp:ObjectDataSource ID="SpecialEventDataSource" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ListAllSpecialEvents" TypeName="eRestaurant.BLL.RestaurantAdminController"></asp:ObjectDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="ViewReservations" runat="server">View Reservations</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="ReservationGridView" runat="server" AutoGenerateColumns="False" DataSourceID="ReservationDataSource" AllowPaging="True">
                    <Columns>
                        <asp:BoundField DataField="ReservationID" HeaderText="ReservationID" SortExpression="ReservationID" />
                        <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" />
                        <asp:BoundField DataField="ReservationDate" HeaderText="ReservationDate" SortExpression="ReservationDate" />
                        <asp:BoundField DataField="NumberParty" HeaderText="NumberParty" SortExpression="NumberParty" />
                        <asp:BoundField DataField="ContactPhone" HeaderText="ContactPhone" SortExpression="ContactPhone" />
                        <asp:BoundField DataField="ReservationStatus" HeaderText="ReservationStatus" SortExpression="ReservationStatus" />
                        <asp:BoundField DataField="EventCode" HeaderText="EventCode" SortExpression="EventCode" />
                    </Columns>
                </asp:GridView>
                <asp:ObjectDataSource ID="ReservationDataSource" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="getReservationBySpecialEvent" TypeName="eRestaurant.BLL.RestaurantAdminController">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="SpecialEventsDropDown" PropertyName="SelectedValue" Name="eventCode" Type="String"></asp:ControlParameter>
                    </SelectParameters>
                </asp:ObjectDataSource>

                

            </td>
        </tr>
    </table>
</asp:Content>

