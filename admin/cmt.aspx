<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_MasterPage.master" AutoEventWireup="true" CodeFile="cmt.aspx.cs" Inherits="admin_cmt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="main-content" class="">
        <section class="wrapper">
            <div class="row" style="margin-left: 10px; padding-right: 20px;">
                <div class="col-lg-12">
                    <%--<asp:Panel ID="pal_grid4" runat="server">--%>
                    <section class="panel">
                        <header class="panel-heading">
                            Unapprove Comments
           
                        </header>
                        <div class="panel-body">

                            <div class="form-group">
                                <label class="col-sm-3 control-label">Comment Title:</label>
                                <div class="col-sm-6">
                                   
                                  <asp:TextBox ID="cmt_vn" runat="server" class="form-control" ForeColor="Black" Font-Bold="True"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="rfv_name" runat="server" ControlToValidate="cmt_vn"
                                      ErrorMessage="Search User Name" ForeColor="Red" SetFocusOnError="true" ValidationGroup="rv1">
                                  </asp:RequiredFieldValidator>
                                 </div>
                                </div>
                            </div>
                            <div class="panel-body">

                            <div class="form-group">
                                <label class="col-sm-3 control-label"></label>
                                <div class="col-sm-6">
                                    <asp:Button ID="buttonsearch1" runat="server" Text="Search" class="btn btn-info" ValidationGroup="rv1" OnClick="buttonsearch1_Click"  />
                                </div>
                            </div>
                        </div>
                    


                    
                        <%--<header class="panel-heading">
                            Approve Faculty
                        </header>--%>
                         <div class="panel-body">
                          <div class="form-group">
                        <label class="col-sm-3 control-label"></label>
                        <div class="col-sm-6">
                        <asp:GridView ID="app_grid1" runat="server" Width="500px" AutoGenerateColumns="false" AllowPaging="true" PageSize="5" OnPageIndexChanging="app_grid1_PageIndexChanging" OnRowCommand="app_grid1_RowCommand" OnRowDataBound="app_grid1_RowDataBound1" OnRowCreated="app_grid1_RowCreated">
                          <HeaderStyle Height="5px" Font-Size="14px" BackColor="#666666" BorderColor="#000000" ForeColor="White" />
                            <RowStyle Height="4px" Font-Size="13px" BorderColor="#000000"  ForeColor="#000000"/>
                            <PagerStyle BorderColor="#cccccc" /> 
                            <AlternatingRowStyle BackColor="#999999" />
                            <Columns>
                                
                                <asp:BoundField DataField="title" HeaderText="TechPost Title" Visible="true" />
                              <asp:BoundField DataField="comment" HeaderText="Comments" Visible="true" />
                              
                                                    
                              <asp:TemplateField>
                                  <ItemTemplate>
                                      <asp:LinkButton ID="linkbtn1" runat="server" Text="Approve" CommandName="approve12" CommandArgument='<%#Bind("cmt_id")%>' OnClientClick="return confirm('Are You Sure You Want Approve')">
                                      </asp:LinkButton>
                                      
                                  </ItemTemplate>
                                  
                              </asp:TemplateField>
                                
                          </Columns>
                        </asp:GridView>
                          </div>
                        </div>
                        </div>
                       </section>

                     <section class="panel">
                        <header class="panel-heading">
                           approve Comments 
                        </header>
                        <div class="panel-body">

                            <div class="form-group">
                                <label class="col-sm-3 control-label">Comment TItle:</label>
                                <div class="col-sm-6">
                                   
                                  <asp:TextBox ID="txtcmt" runat="server" class="form-control" ForeColor="Black" Font-Bold="True"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcmt"
                                      ErrorMessage="Search User Name" ForeColor="Red" SetFocusOnError="true" ValidationGroup="rv2">
                                  </asp:RequiredFieldValidator>
                                 </div>
                                </div>
                            </div>
                            <div class="panel-body">

                            <div class="form-group">
                                <label class="col-sm-3 control-label"></label>
                                <div class="col-sm-6">
                                    <asp:Button ID="buttonsearch3" runat="server" Text="Search" class="btn btn-info" ValidationGroup="rv2" OnClick="buttonsearch3_Click" />
                                </div>
                            </div>
                        </div>
                    


                    
                        <%--<header class="panel-heading">
                            Approve Faculty
                        </header>--%>
                         <div class="panel-body">
                          <div class="form-group">
                        <label class="col-sm-3 control-label"></label>
                        <div class="col-sm-6">
                        <asp:GridView ID="appgrid2" runat="server" Width="500px" AutoGenerateColumns="false" AllowPaging="true" PageSize="5" OnPageIndexChanging="appgrid2_PageIndexChanging" OnRowCommand="appgrid2_RowCommand" OnRowDataBound="appgrid2_RowDataBound" OnRowCreated="appgrid2_RowCreated">
                          <HeaderStyle Height="5px" Font-Size="14px" BackColor="#666666" BorderColor="#000000" ForeColor="White" />
                            <RowStyle Height="4px" Font-Size="13px" BorderColor="#000000"  ForeColor="#000000"/>
                            <PagerStyle BorderColor="#cccccc" /> 
                            <AlternatingRowStyle BackColor="#999999" />
                            <Columns>
                                
                                <asp:BoundField DataField="title" HeaderText="TechPost Title" Visible="true" />
                              <asp:BoundField DataField="comment" HeaderText="Comments" Visible="true" />
                              <%--<asp:BoundField DataField="cmt_id" Visible="false" />--%>
                                                    
                              <asp:TemplateField>
                                  <ItemTemplate>
                                      <asp:LinkButton ID="linkbtn2"  runat="server" Text="UnApprove" CommandName="Unapprove12" CommandArgument='<%#Bind("cmt_id")%>' OnClientClick="return confirm('Are You Sure You Want UnApprove')">
                                      </asp:LinkButton>
                                  </ItemTemplate>
                              </asp:TemplateField>
                          </Columns>
                        </asp:GridView>
                          </div>
                        </div>
                        </div>
                       </section>
                        <%--</asp:Panel>--%>
                    </div>
                </div>
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

