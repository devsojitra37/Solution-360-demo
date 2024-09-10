<%@ Page Title="" Language="C#" MasterPageFile="~/faculty/admin_MasterPage.master" AutoEventWireup="true" CodeFile="gvideo.aspx.cs" Inherits="faculty_gvideo" %>

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
                            Manage Video
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
                                <%--<label class="col-sm-3 control-label">Search:</label>--%>
                                <div class="col-sm-6">
                                   <asp:DropDownList ID="ddl1" runat="server" Class="form-control" Width="200px">
                                       <asp:ListItem Text="Title" Value="title"></asp:ListItem>
                                       <asp:ListItem Text="Subject" Value="subject"></asp:ListItem>
                                   </asp:DropDownList>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddl1"
                                      ErrorMessage="Search Field" ForeColor="Red" SetFocusOnError="true" ValidationGroup="v1">
                                  </asp:RequiredFieldValidator>
                                    </div>
                                <div class="col-sm-6" style="position:absolute;margin-left:250px;">
                                     <asp:TextBox ID="txt_vn3" runat="server" class="form-control" Width="200px" ForeColor="Black" Font-Bold="True"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="rfv_name" runat="server" ControlToValidate="txt_vn3"
                                      ErrorMessage="Search Video" ForeColor="Red" SetFocusOnError="true" ValidationGroup="v1">
                                  </asp:RequiredFieldValidator>
                                </div>
                                </div>
                            </div>
                               
                        <div class="panel-body">

                            <div class="form-group">
                                <label class="col-sm-3 control-label"></label>
                                <div class="col-sm-6">
                                    <asp:Button ID="vidbtn" runat="server" Text="Search" class="btn btn-info" ValidationGroup="v1" OnClick="vidbtn_Click"/>
                                </div>
                            </div>
                        </div>


                         <div class="panel-body">
                          <div class="form-group">
                              <label class="col-sm-3 control-label"></label>
                        <asp:GridView ID="postgv3" runat="server" Width="500px" AutoGenerateColumns="false" AllowPaging="true" PageSize="3" OnPageIndexChanging="postgv3_PageIndexChanging" OnRowCommand="postgv3_RowCommand" OnRowDataBound="postgv3_RowDataBound" OnRowCreated="postgv3_RowCreated">
                          <HeaderStyle Height="5px" Font-Size="14px" BackColor="#666666" BorderColor="#000000" ForeColor="White" />
                            <RowStyle Height="4px" Font-Size="13px" BorderColor="#000000"  ForeColor="#000000"/>
                            <PagerStyle BorderColor="#cccccc" /> 
                            <AlternatingRowStyle BackColor="#999999" />
                            <Columns>
                                
                                <asp:BoundField DataField="title" HeaderText="Title" Visible="true" />
                              <asp:BoundField DataField="subject" HeaderText="Subject" Visible="true" />
                                <asp:BoundField DataField="file_url_frem" HeaderText="Video Upload" Visible="true" />                    
                              <asp:TemplateField>
                                  <ItemTemplate>
                                      <asp:LinkButton ID="linkedit3" runat="server" Text="Delete" CommandName="delete4" CommandArgument='<%#Bind("id")%>' OnClientClick="return confirm('Are you sure you want Delete')">
                                      </asp:LinkButton>
                                  </ItemTemplate>
                              </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                      <asp:LinkButton ID="show" runat="server" Text="Show" CommandName="show1" CommandArgument='<%#Bind("id") %>'></asp:LinkButton>
                                  </ItemTemplate>
                                </asp:TemplateField>
                          </Columns>
                        </asp:GridView>
                          </div>
                        </div>
                       </section>
                    <section class="panel">
                        <asp:Panel ID="video" runat="server" Visible="false">
                          <div class="panel-body">
                              <asp:DataList ID="dl_video" runat="server"><ItemTemplate>
                        <iframe width="560" height="315" src='<%# Eval("file_url_frem") %>' frameborder="0" allowfullscreen></iframe>
					</ItemTemplate></asp:DataList>
                              </div>
                            </asp:Panel>
                        </section>
                        <%--</asp:Panel>--%>
                    



                   <%-- <asp:Panel ID="pal_form4" runat="server" Visible="false">
                    <section class="panel">
                        <header class="panel-heading">
                            Manage Video
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
                                <label class="col-sm-3 control-label">Subject</label>
                                <div class="col-sm-6">
                                   
                                  <asp:TextBox ID="TextBox1" runat="server" class="form-control" ForeColor="Black" Font-Bold="True"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ControlToValidate="TextBox1" ErrorMessage="Enter Subject" ForeColor="Red" SetFocusOnError="true" ValidationGroup="v1"></asp:RequiredFieldValidator>
                                 </div>  
                                </div>
                            </div>
                                 <div class="panel-body">
                                <div class="form-group">
                                <label class="col-sm-3 control-label">Video File URL</label>
                                <div class="col-sm-6">
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" ForeColor="Black" Font-Bold="True"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter file URL" ForeColor="Red" SetFocusOnError="true" ValidationGroup="v1"></asp:RequiredFieldValidator> 
                                   <br /> Ex : https://www.youtube.com/watch?v=3AYoipyqOkQ
                                  
                                </div>
                            </div>
                                     
                            <%--<div class="form-group">
                                <label class="col-sm-3 control-label">Select Icon:*</label>
                                <div class="col-sm-6">
                                   
                                
                                   
                                </div>
                            </div>--%>

                           <%-- <div class="panel-body"></div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label"></label>
                                <div class="col-sm-6">
                                    <asp:Button ID="btn2" runat="server" Text="submit" class="btn btn-info" ValidationGroup="v1" OnClick="btn2_Click"  />
                                </div>
                            </div>
                        </div>
                    </section>
                        </asp:Panel>--%>
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

