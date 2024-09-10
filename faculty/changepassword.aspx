<%@ Page Title="" Language="C#" MasterPageFile="~/faculty/admin_MasterPage.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="faculty_changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="main-content" class="">
        <section class="wrapper">
            <div class="row" style="margin-left: 10px; padding-right: 20px;">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                          Change Password
                        </header>
                        
                            <div class="panel-body">
                            <div class="form-group">
                                <label class="col-sm-3 control-label">Current Password:</label>
                                <div class="col-sm-6">
                                    <asp:TextBox ID="old_pass" runat="server" TextMode="Password" class="form-control" ForeColor="Black" Font-Bold="True" AutoCompleteType="Disabled"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="old" Display="Dynamic"  runat ="server" ErrorMessage="Enter Current Password" ControlToValidate="old_pass" SetFocusOnError="True" Font-Names="verdana" ForeColor="Red" Font-Size="10px" ValidationGroup="v1"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                             </div> 
                        
                        <div class="panel-body">
                            <div class="form-group">
                                <label class="col-sm-3 control-label">Enter New Password:</label>
                                <div class="col-sm-6">
                                    <asp:TextBox ID="newpass" runat="server" TextMode="Password" class="form-control" ForeColor="Black" Font-Bold="True" AutoCompleteType="Disabled"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="new_pass" Display="Dynamic"  runat ="server" ErrorMessage="Enter New Password" ControlToValidate="newpass" SetFocusOnError="True" Font-Names="verdana" ForeColor="Red" Font-Size="10px" ValidationGroup="v1"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                             </div>
                        
                        <div class="panel-body">
                            <div class="form-group">
                                <label class="col-sm-3 control-label">ReEnter New Password:</label>
                                <div class="col-sm-6">
                                    <asp:TextBox ID="renew" runat="server" TextMode="Password" class="form-control" ForeColor="Black" Font-Bold="True" AutoCompleteType="Disabled"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="renew_password" Display="Dynamic"  runat ="server" ErrorMessage="ReEnter New Password" ControlToValidate="renew" SetFocusOnError="True" Font-Names="verdana" ForeColor="Red" Font-Size="10px" ValidationGroup="v1"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="renewpass" Display="Dynamic" runat="server" ErrorMessage="New Password Not Match" ControlToValidate="renew" ControlToCompare="newpass" ForeColor="Red" Font-Names="verdana" Font-Size="10px" ValidationGroup="v1"></asp:CompareValidator> 
                                </div>
                            </div>
                             </div>  

                            <div class="panel-body">
                            <div class="form-group">
                                    <label class="col-sm-3 control-label"></label>
                                  <div class="col-sm-6">
                                    <asp:Button ID="ch_pass" runat="server" Text="Submit" class="btn btn-info" ValidationGroup="v1" OnClick="ch_pass_Click" />
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

