﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeFile="AddSize.aspx.cs" Inherits="ResponsiveWebSite.AddSize" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="form-horizontal">
            <h2>Add Size</h2>
            <hr />
             <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Size Name"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtSizeName" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="This Field is Required !" ControlToValidate="txtSizeName"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Brand"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlBrand" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="This Field is Required !" ControlToValidate="ddlBrand"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <div class="form-group">
                    <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="Category"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlCategory" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" ErrorMessage="This Field is Required !" ControlToValidate="ddlCategory"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <div class="form-group">
                    <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="Sub Category"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlSubCat" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="text-danger" runat="server" ErrorMessage="This Field is Required !" ControlToValidate="ddlSubCat"></asp:RequiredFieldValidator>
                    </div>
                </div>
             <div class="form-group">
                    <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" Text="Gender"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlGender" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="text-danger" runat="server" ErrorMessage="This Field is Required !" ControlToValidate="ddlGender"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <div class="form-group">
                    <div class="col-md-2"></div>
                        <div class="col-md-6">
                            <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-default" OnClick="btnAdd_Click" />
                       </div>  
                   </div>
            </div>
        <h1>Size</h1>
        <hr />
        <div class="panel panel-default">
            <! -- Default panel contents -->
  <div class="panel-heading">All Sizes</div>
            <asp:Repeater ID="rptrCategory" runat="server">
                <HeaderTemplate>
<table class="table">
                <thead>
                    <tr>
                        <th>№</th>
                        <th>Name</th>
                        <th>Brand</th>
                        <th>Category</th>
                        <th>Sub Category</th>
                        <th>Gender</th>
                        <th>Edit</th>
                    </tr>
                </thead>
                <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("SizeID") %></td>
                        <td><%# Eval("SizeName") %></td>
                        <td><%# Eval("Name") %></td>
                        <td><%# Eval("CatName") %></td>
                        <td><%# Eval("SubCatName") %></td>
                        <td><%# Eval("GenderName") %></td>
                        <td>Edit</td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </tbody>
            </table>
                </FooterTemplate>
            </asp:Repeater>
          </div>
   </div>
</asp:Content>
