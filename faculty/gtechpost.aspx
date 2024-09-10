<%@ Page Title="" Language="C#" MasterPageFile="~/faculty/admin_MasterPage.master" AutoEventWireup="true" CodeFile="gtechpost.aspx.cs" Inherits="faculty_gtechpost" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <section id="main-content" class="">
        <section class="wrapper">
            <div class="row" style="margin-left: 10px; padding-right: 20px;">
                <div class="col-lg-12">
                    <asp:Panel ID="pal_grid" runat="server">
                    <section class="panel">
                        <header class="panel-heading">
                            Manage TechPost
                              </header>
                       
                                <div class="panel-body">
                                    <div class="form-group">
                                <label class="col-sm-3 control-label">TechPost Title:</label>
                                <div class="col-sm-6">
                            
                                  <asp:TextBox ID="txt_vn1" runat="server" class="form-control" ForeColor="Black" Font-Bold="True"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="rfv_name" runat="server" ControlToValidate="txt_vn1"
                                      ErrorMessage="Search TechPost Title" ForeColor="Red" SetFocusOnError="true" ValidationGroup="v1">
                                  </asp:RequiredFieldValidator>
                                 </div>
                            </div>
                        </div>
                        <div class="panel-body">

                            <div class="form-group">
                                <label class="col-sm-3 control-label"></label>
                                <div class="col-sm-6">
                                    <asp:Button ID="tectpostbtn" runat="server" Text="Search" class="btn btn-info" ValidationGroup="v1" OnClick="tectpostbtn_Click"/>
                                </div>
                            </div>
                        </div>


                         <div class="panel-body">
                              <div class="form-group">
                                <label class="col-sm-3 control-label"></label>
                        <asp:GridView ID="postgv" runat="server" Width="500px" AutoGenerateColumns="false" AllowPaging="true" PageSize="7" OnPageIndexChanging="postgv_PageIndexChanging" OnRowCommand="postgv_RowCommand" OnRowDataBound="postgv_RowDataBound" OnRowCreated="postgv_RowCreated">
                            <HeaderStyle Height="5px" Font-Size="14px" BackColor="#666666" BorderColor="#000000" ForeColor="White" />
                            <RowStyle Height="4px" Font-Size="13px" BorderColor="#000000"  ForeColor="#000000"/>
                            <PagerStyle BorderColor="#cccccc" /> 
                            <AlternatingRowStyle BackColor="#999999" />
                          <Columns>
                                
                                <asp:BoundField DataField="title" HeaderText="Title" Visible="true" />
                                <%--<asp:BoundField DataField="description" HeaderText="Description" Visible="true" />--%>                    
                              <asp:TemplateField>
                                  <ItemTemplate>
                                      <asp:LinkButton ID="linkedit" runat="server" Text="Edit" CommandName="Edit1" CommandArgument='<%#Bind("id") %>'>
                                      </asp:LinkButton>
                                  </ItemTemplate>
                              </asp:TemplateField>
                          </Columns>
                        </asp:GridView>
                                      
                                  </div>
                        </div>
                         </section>
                        </asp:Panel>
                    
                    <%--second section start--%>
                     <asp:Panel ID="Pal_form" runat="server" Visible="false">
                    <section class="panel">
                       
                         
                        <header class="panel-heading">
                            Manage TechPost
                        </header>
     
                        <div class="panel-body">

                            
                            <div class="form-group">
                                <label class="col-sm-3 control-label">Title</label>
                                <div class="col-sm-6">
                                   
                                  <asp:TextBox ID="txt_vn" runat="server" class="form-control" ForeColor="Black" Font-Bold="True"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_vn" ErrorMessage="Enter Title" ForeColor="Red" SetFocusOnError="true" ValidationGroup="v1"></asp:RequiredFieldValidator>
                                   
                                </div>
                            </div>
                            </div>
                            <telerik:RadScriptManager ID="RadScriptManager1" runat="server"></telerik:RadScriptManager>
                            <div class="panel-body">
                                <div class="form-group">
                                <label class="col-sm-3 control-label">Description</label>
                                <div class="col-sm-6">
                                   <telerik:RadEditor ID="RadEditor1" runat="server"></telerik:RadEditor>
                                  <%--<asp:TextBox ID="TextBox1" runat="server" class="form-control" ForeColor="Black" Font-Bold="True" TextMode="MultiLine"></asp:TextBox>--%>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadEditor1" ErrorMessage="Enter Post" ForeColor="Red" SetFocusOnError="true" ValidationGroup="v1"></asp:RequiredFieldValidator>
                                   
                                </div>
                            </div>

                            <%--<div class="form-group">
                                <label class="col-sm-3 control-label">Select Icon:*</label>
                                <div class="col-sm-6">
                                   
                                
                                   
                                </div>
                            </div>--%>

                            <div class="panel-body"></div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label"></label>
                                <div class="col-sm-6">
                                    <asp:Button ID="btns" runat="server" Text="Upload" class="btn btn-info" ValidationGroup="v1" OnClick="btns_Click" />
                                </div>
                            </div>
                        </div>
                    </section>
                    <%--second section end--%>
                         </asp:Panel>

                </div>
                </div>
            <!-- page end-->
        </section>
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

