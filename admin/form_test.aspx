<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_MasterPage.master" AutoEventWireup="true" CodeFile="form_test.aspx.cs" Inherits="admin_form_test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <section id="main-content" class="">
        <section class="wrapper">
            <div class="row" style="margin-left: 10px; padding-right: 20px;">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Add Category
           
                        </header>
                        <div class="panel-body">

                            <div class="form-group">
                                <label class="col-sm-3 control-label">Category Name:*</label>
                                <div class="col-sm-6">
                                   
                                  <asp:TextBox ID="txt_vn" runat="server" class="form-control" ForeColor="Black" Font-Bold="True"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfv_name" runat="server" ControlToValidate="txt_vn"
    ErrorMessage="Enter Category Name" ForeColor="Red" SetFocusOnError="true" ValidationGroup="v1"
    ></asp:RequiredFieldValidator>
                                   
                                </div>
                            </div>

                            <div class="panel-body"></div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label">Select Icon:*</label>
                                <div class="col-sm-6">
                                   
                                
                                   
                                </div>
                            </div>

                            <div class="panel-body"></div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label"></label>
                                <div class="col-sm-6">
                                    <asp:Button ID="btnsubmit" runat="server" Text="submit" class="btn btn-info" ValidationGroup="v1"  />
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
                </div>


            <!-- page end-->
        </section>
    </section>
</asp:Content>

