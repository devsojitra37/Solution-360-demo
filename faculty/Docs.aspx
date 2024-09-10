<%@ Page Title="" Language="C#" MasterPageFile="~/faculty/admin_MasterPage.master" AutoEventWireup="true" CodeFile="Docs.aspx.cs" Inherits="faculty_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section id="main-content" class="">
        <section class="wrapper">
            <div class="row" style="margin-left: 10px; padding-right: 20px;">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Add Docs
                        </header>
                        <div class="panel-body">

                            
                            <div class="form-group">
                                <label class="col-sm-3 control-label">Title</label>
                                <div class="col-sm-6">
                                   
                                  <asp:TextBox ID="txt_vn" runat="server" class="form-control" ForeColor="Black" Font-Bold="True"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="rfv_name" runat="server" ControlToValidate="txt_vn" ErrorMessage="Enter Title" ForeColor="Red" SetFocusOnError="true" ValidationGroup="v1"></asp:RequiredFieldValidator>
                                   
                                </div>
                            </div>
                            </div>

                            
                                 <div class="panel-body">
                                <div class="form-group">
                                <label class="col-sm-3 control-label">File URL</label>
                                <div class="col-sm-6">
                                  <asp:FileUpload ID="ful" runat="server" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ful" ErrorMessage="Select file URL" ForeColor="Red" SetFocusOnError="true" ValidationGroup="v1"></asp:RequiredFieldValidator> 
                                  
                                    </div>
                                </div>
                            </div>
                                     <div class="panel-body">
                                <div class="form-group">
                                <label class="col-sm-3 control-label">Subject</label>
                                <div class="col-sm-6">
                                   
                                  <asp:TextBox ID="TextBox1" runat="server" class="form-control" ForeColor="Black" Font-Bold="True"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Subject" ForeColor="Red" SetFocusOnError="true" ValidationGroup="v1"></asp:RequiredFieldValidator>
                                 </div>  
                                </div>
                            </div>

                            <%--<div class="form-group">
                                <label class="col-sm-3 control-label">Select Icon:*</label>
                                <div class="col-sm-6">
                                   
                                

                                   
                                </div>
                            </div>--%>

                            <div class="panel-body">

                            <div class="form-group">
                                <label class="col-sm-3 control-label"></label>
                                <div class="col-sm-6">
                                    <asp:Button ID="btnsubmit" runat="server" Text="submit" class="btn btn-info" ValidationGroup="v1" OnClick="btnsubmit_Click" />
                                </div>
                            </div>
                        </div>
                        </section>
                        </div>
                  
                </div>
               

        </section>
           
            <!-- page end-->
        </section>
    
    
 <script src="js/jquery.js"></script>

    <script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script>
    <script src="js/jquery.nicescroll.js"></script>
    <!--Easy Pie Chart-->
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

