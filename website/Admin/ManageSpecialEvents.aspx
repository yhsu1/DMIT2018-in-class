﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ManageSpecialEvents.aspx.cs" Inherits="Admin_ManageSpecialEvents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="row col-md-12">
        <h1>Manage Special Events</h1>
    </div>

    <asp:ListView ID="ListView1" runat="server" DataSourceID="SpecialEventsDataSource"></asp:ListView>

    <asp:ObjectDataSource runat="server" ID="SpecialEventsDataSource"></asp:ObjectDataSource>
</asp:Content>

