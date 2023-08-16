<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddSubCategory.aspx.cs" Inherits="ResponsiveWebSite.AddSubCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
        <div class="form-horizontal">
            <h2>Add SubCategory</h2>
            <hr />
              <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Main Category"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="This Field is Required !" ControlToValidate="ddlCategory"></asp:RequiredFieldValidator>
                    </div>
                </div>

             <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Sub Category"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtSubCatName" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="This Field is Required !" ControlToValidate="txtSubCatName"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <div class="form-group">
                    <div class="col-md-2"></div>
                        <div class="col-md-6">
                            <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-default" OnClick="btnAdd_Click" />
                       </div>  
                   </div>
            </div>
    <h1>SubCategories</h1>
        <hr />
        <div class="panel panel-default">
            <! -- Default panel contents -->
  <div class="panel-heading">All SubCategories</div>
            <asp:Repeater ID="rptrCategory" runat="server">
                <HeaderTemplate>
<table class="table">
                <thead>
                    <tr>
                        <th>№</th>
                        <th>SubCategory</th>
                        <th>Category</th>
                        <th>Edit</th>
                    </tr>
                </thead>
                <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("SubCatID") %></td>
                        <td><%# Eval("SubCatName") %></td>
                        <td><%# Eval("CatName") %></td>
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
