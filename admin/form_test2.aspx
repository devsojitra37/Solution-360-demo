<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_MasterPage.master" AutoEventWireup="true" CodeFile="form_test2.aspx.cs" Inherits="admin_form_test2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="main-content" class="">
        <section class="wrapper">
            <div class="row" style="margin-left: 10px; padding-right: 20px;">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                          Add Directorie
           
                        </header>
                        <div class="panel-body">

                             <div class="form-group">
                                <label class="col-sm-3 control-label">Category Name:*</label>
                                <div class="col-sm-6">

  
                                </div>
                            </div>

                            <div class="panel-body"></div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">Unit Name:*</label>
                                <div class="col-sm-6">

                                    <asp:TextBox ID="txtcn" runat="server" class="form-control" ForeColor="Black" Font-Bold="True" AutoCompleteType="Disabled"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="rfv1" Display="Dynamic"  runat ="server" ErrorMessage="Field is Required" ControlToValidate ="txtcn" SetFocusOnError="True" Font-Names="verdana" ForeColor="Red" Font-Size="10px" ValidationGroup="v1"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="panel-body"></div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">Address:*</label>
                                <div class="col-sm-6">

                                    <asp:TextBox ID="txt_add" runat="server" class="form-control" ForeColor="Black" Font-Bold="True" AutoCompleteType="Disabled"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic"  runat ="server" ErrorMessage="Field is Required" ControlToValidate ="txt_add" SetFocusOnError="True" Font-Names="verdana" ForeColor="Red" Font-Size="10px" ValidationGroup="v1"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="panel-body"></div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">Owner Name:*</label>
                                <div class="col-sm-6">

                                    <asp:TextBox ID="txt_owner" runat="server" class="form-control" ForeColor="Black" Font-Bold="True" AutoCompleteType="Disabled"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="Dynamic"  runat ="server" ErrorMessage="Field is Required" ControlToValidate ="txt_owner" SetFocusOnError="True" Font-Names="verdana" ForeColor="Red" Font-Size="10px" ValidationGroup="v1"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="panel-body"></div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">TelePhone:*</label>
                                <div class="col-sm-6">

                                    <asp:TextBox ID="txt_teli" runat="server" class="form-control" ForeColor="Black" Font-Bold="True" AutoCompleteType="Disabled"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Display="Dynamic"  runat ="server" ErrorMessage="Field is Required" ControlToValidate ="txt_teli" SetFocusOnError="True" Font-Names="verdana" ForeColor="Red" Font-Size="10px" ValidationGroup="v1"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_teli" ValidationExpression="^[0-9]*$" ErrorMessage="Telephone No. invalid" ForeColor="Red"></asp:RegularExpressionValidator>
                                </div>
                            </div>

                            <div class="panel-body"></div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">Mobile No.:*</label>
                                <div class="col-sm-6">

                                    <asp:TextBox ID="txt_mo" runat="server" class="form-control" ForeColor="Black" Font-Bold="True" AutoCompleteType="Disabled" MaxLength="10"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Display="Dynamic"  runat ="server" ErrorMessage="Field is Required" ControlToValidate ="txt_mo" SetFocusOnError="True" Font-Names="verdana" ForeColor="Red" Font-Size="10px" ValidationGroup="v1"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="rev1" runat="server" ControlToValidate="txt_mo" ValidationExpression="^[1-9]{1}[0-9]{9}$" ValidationGroup="v1" ErrorMessage="Mobile No. invalid" ForeColor="Red"></asp:RegularExpressionValidator>
                                </div>
                            </div>

                            

                            <div class="panel-body"></div>


                            <div class="panel-body"></div>
                            <div class="form-group">
                                    <label class="col-sm-3 control-label"></label>
                                  <div class="col-sm-6">
                                    <asp:Button ID="btn_update" runat="server" Text="submit" class="btn btn-info" ValidationGroup="v1"  />
                                </div>
                            </div>
                        </div>
                    </section>
                </div>





            </div>
            </section>
       </section>
     <script src="js/jquery.js"></script>

    <script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script>
    <script src="js/jquery.nicescroll.js"></script>
     <script src="js/easypiechart/jquery.easypiechart.js"></script>
    <!--Sparkline Chart-->
    <script src="js/sparkline/jquery.sparkline.js"></script>
    <!--jQuery Flot Chart-->
    <script src="js/flot-chart/jquery.flot.js"></script>
    <script src="js/flot-chart/jquery.flot.tooltip.min.js"></script>
    <script src="js/flot-chart/jquery.flot.resize.js"></script>
    <script src="js/flot-chart/jquery.flot.pie.resize.js"></script>

    <script src="js/iCheck/jquery.icheck.js"></script>

    <script type="text/javascript" src="js/ckeditor/ckeditor.js"></script>

    <!--common script init for all pages-->
    <script src="js/scripts.js"></script>

    <!--icheck init -->
    <script src="js/icheck-init.js"></script>
</asp:Content>

