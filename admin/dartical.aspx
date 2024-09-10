<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_MasterPage.master" AutoEventWireup="true" CodeFile="dartical.aspx.cs" Inherits="admin_dartical" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section id="main-content" class="">
        <section class="wrapper">
            <div class="row" style="margin-left: 10px; padding-right: 20px;">
                <div class="col-lg-12">
                  
                    <section class="panel">
                        <header class="panel-heading">
                            Delete Artical
                        </header>
                        <div class="panel-body">

                            <div class="form-group">
                                <label class="col-sm-3 control-label">Faculty Name:</label>
                                <div class="col-sm-6">
                                   <asp:DropDownList ID="ddl" runat="server" Class="form-control" DataTextField="user_name" DataValueField="faculty_id"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="refdropdown" runat="server" ControlToValidate="ddl"
                                      ErrorMessage="Search Faculty Name" ForeColor="Red" SetFocusOnError="true" ValidationGroup="v1">
                                  </asp:RequiredFieldValidator>
                                </div>
                                </div>
                            </div>
                                <div class="panel-body">
                                    <div class="form-group">
                                <label class="col-sm-3 control-label">Artical Title:</label>
                                <div class="col-sm-6">
                            
                                  <asp:TextBox ID="txt_vn" runat="server" class="form-control" ForeColor="Black" Font-Bold="True"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="rfv_name" runat="server" ControlToValidate="txt_vn"
                                      ErrorMessage="Search Artical Title" ForeColor="Red" SetFocusOnError="true" ValidationGroup="v1">
                                  </asp:RequiredFieldValidator>
                                 </div>
                            </div>
                        </div>
                        <div class="panel-body">

                            <div class="form-group">
                                <label class="col-sm-3 control-label"></label>
                                <div class="col-sm-6">
                                    <asp:Button ID="articalbtn" runat="server" Text="Search" class="btn btn-info" ValidationGroup="v1" OnClick="articalbtn_Click"/>
                                </div>
                            </div>
                        </div>



                         <div class="panel-body">
                          <div class="form-group">
                              <label class="col-sm-3 control-label"></label>
                        <asp:GridView ID="postgv2" runat="server" Width="500px" AutoGenerateColumns="false" AllowPaging="true" PageSize="5" OnPageIndexChanging="postgv2_PageIndexChanging" OnRowCommand="postgv2_RowCommand" OnRowDataBound="postgv2_RowDataBound" OnRowCreated="postgv2_RowCreated">
                          <HeaderStyle Height="5px" Font-Size="14px" BackColor="#666666" BorderColor="#000000" ForeColor="White" />
                            <RowStyle Height="4px" Font-Size="13px" BorderColor="#000000"  ForeColor="#000000"/>
                            <PagerStyle BorderColor="#cccccc" /> 
                            <AlternatingRowStyle BackColor="#999999" />
                            <Columns>
                                
                                <asp:BoundField DataField="title" HeaderText="Title" Visible="true" />
                              <asp:BoundField DataField="date" HeaderText="Date" Visible="true" />
                                <%--<asp:BoundField DataField="description" HeaderText="Description" Visible="true" />--%>                    
                              <asp:TemplateField>
                                  <ItemTemplate>
                                      <asp:LinkButton ID="linkedit1" runat="server" Text="Delete" CommandName="delete2" CommandArgument='<%#Bind("id") %>' OnClientClick="return confirm('Are you sure you want Delete')">
                                      </asp:LinkButton>
                                  </ItemTemplate>
                              </asp:TemplateField>
                          </Columns>
                        </asp:GridView>
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

