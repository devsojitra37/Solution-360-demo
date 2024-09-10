<%@ Page Title="" Language="C#" MasterPageFile="~/faculty/admin_MasterPage.master" AutoEventWireup="true" CodeFile="gartical.aspx.cs" Inherits="faculty_gartical" %>


<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="main-content" class="">
        <section class="wrapper">
            <div class="row" style="margin-left: 10px; padding-right: 20px;">
                <div class="col-lg-12">
                    <asp:Panel ID="pal_grid1" runat="server">
                    <section class="panel">
                        <header class="panel-heading">
                            Manage Artical
                        </header>
                        <%--<div class="panel-body">

                            <div class="form-group">
                                <label class="col-sm-3 control-label">Faculty Name:</label>
                                <div class="col-sm-6">
                                   <asp:DropDownList ID="ddl" runat="server" Class="form-control" DataTextField="user_name" DataValueField="user_id"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="refdropdown" runat="server" ControlToValidate="ddl"
                                      ErrorMessage="Search Faculty Name" ForeColor="Red" SetFocusOnError="true" ValidationGroup="v1">
                                  </asp:RequiredFieldValidator>
                                </div>
                                </div>
                            </div>--%>
                                <div class="panel-body">
                                    <div class="form-group">
                                <label class="col-sm-3 control-label">Artical Title:</label>
                                <div class="col-sm-6">
                            
                                  <asp:TextBox ID="txt_vn1" runat="server" class="form-control" ForeColor="Black" Font-Bold="True"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_vn1"
                                      ErrorMessage="Search Artical Title" ForeColor="Red" SetFocusOnError="true" ValidationGroup="v1">
                                  </asp:RequiredFieldValidator>
                                 </div>
                            </div>
                        </div>
                        <div class="panel-body">

                            <div class="form-group">
                                <label class="col-sm-3 control-label"></label>
                                <div class="col-sm-6">
                                    <asp:Button ID="atcbtn" runat="server" Text="Search" class="btn btn-info" ValidationGroup="v1" OnClick="atcbtn_Click"/>
                                </div>
                            </div>
                        </div>



                         <div class="panel-body">
                          <div class="form-group">
                              <label class="col-sm-3 control-label"></label>
                        <asp:GridView ID="postgv1" runat="server" Width="500px" AutoGenerateColumns="false" AllowPaging="true" PageSize="3" OnPageIndexChanging="postgv1_PageIndexChanging" OnRowCommand="postgv1_RowCommand" OnRowDataBound="postgv1_RowDataBound" OnRowCreated="postgv1_RowCreated">
                          <HeaderStyle Height="5px" Font-Size="14px" BackColor="#666666" BorderColor="#000000" ForeColor="White" />
                            <RowStyle Height="4px" Font-Size="13px" BorderColor="#000000"  ForeColor="#000000"/>
                            <PagerStyle BorderColor="#cccccc"/> 
                            <AlternatingRowStyle BackColor="#999999" />
                            <Columns>
                               
                                <asp:BoundField DataField="title" HeaderText="Title" Visible="true" HeaderStyle-Height="30px" />
                              <asp:BoundField DataField="date" HeaderText="Date" Visible="true" />
                                <%--<asp:BoundField DataField="description" HeaderText="Description" Visible="true" />--%>                    
                              <asp:TemplateField>
                                  <ItemTemplate>
                                      <asp:LinkButton ID="linkedit1" runat="server" Text="Edit" CommandName="Edit2" CommandArgument='<%#Bind("id") %>'>
                                      </asp:LinkButton>
                                  </ItemTemplate>
                              </asp:TemplateField>
                          </Columns>
                        </asp:GridView>
                          </div>
                        </div>
                         </section>
                        </asp:Panel>

                    <asp:Panel ID="pal_form1" runat="server" Visible="false">
                         <section class="panel">
                        <header class="panel-heading">
                            Manage Artical
                        </header>
                        <div class="panel-body">

                            
                            <div class="form-group">
                                <label class="col-sm-3 control-label">Title</label>
                                <div class="col-sm-6">
                                   
                                  <asp:TextBox ID="txt_vn" runat="server" class="form-control" ForeColor="Black" Font-Bold="True"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="rfv_name" runat="server" ControlToValidate="txt_vn" ErrorMessage="Enter title" ForeColor="Red" SetFocusOnError="true" ValidationGroup="v1"></asp:RequiredFieldValidator>
                                   
                                </div>
                            </div>
                            </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label class="col-sm-3 control-label">Date</label>
                                <div class="col-sm-6">
                                   
                                  <asp:TextBox ID="TextBox2" runat="server" class="form-control" ForeColor="Black" Font-Bold="True" TextMode="Date"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Date" ForeColor="Red" SetFocusOnError="true" ValidationGroup="v1"></asp:RequiredFieldValidator>
                                   
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
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RadEditor1" ErrorMessage="Enter Artical" ForeColor="Red" SetFocusOnError="true" ValidationGroup="v1"></asp:RequiredFieldValidator>
                                   
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
                                    <asp:Button ID="btn" runat="server" Text="Upload" class="btn btn-info" ValidationGroup="v1" OnClick="btn_Click" />
                                </div>
                            </div>
                        </div>
                    </section>
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

