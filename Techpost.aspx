<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Techpost.aspx.cs" Inherits="Techpost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- BEGIN .page-header -->
	<div class="page-header clearfix">
		
		<div class="page-header-inner clearfix">
		
		<div class="page-title">	
			<h2>TechPost</h2>
			<div class="page-title-block"></div>
		</div>
		
		<div class="breadcrumbs">
			<p><a href="Default.aspx">Home</a> &#187; TechPost</p>
		</div>
		
		</div>
		
	<!-- END .page-header -->
	</div>
	
	<!-- BEGIN .content-wrapper -->
	<div class="content-wrapper page-content-wrapper clearfix">
		
		<!-- BEGIN .main-content -->
		<div class="main-content page-content">
			
			<!-- BEGIN .inner-content-wrapper -->
			<div class="inner-content-wrapper">
				<asp:Panel ID="techpnl" runat="server">
				<!-- BEGIN .blog-entry -->
				<div class="blog-entry clearfix">
				    <asp:Repeater ID="tech" runat="server" OnItemCommand="tech_ItemCommand">
                        <ItemTemplate>
						<h3>
                            <asp:LinkButton Font-Underline="true" ID="title1" runat="server" Text='<%# Truncate(DataBinder.Eval(Container.DataItem,"title").ToString(),40) %>' ForeColor="#006600" CommandName="tech_post" CommandArgument='<%# Bind("id") %>' Font-Size="Larger"> </asp:LinkButton> &#187;</h3>
                            <%--<asp:Label ID="titl" runat="server" Text='<%# Bind("title") %>'></asp:Label> &#187;</a>--%>
						<%--<p><asp:Label ID="desc" runat="server" Text='<%# Truncate(DataBinder.Eval(Container.DataItem,"description").ToString(),200) %>'></asp:Label></p>--%>
                            <br />
                            <br />
                            <br />
                        </ItemTemplate>
				    </asp:Repeater>
				<!-- END .blog-entry -->
				</div>
                    </asp:Panel>
                <!--end panel-->

                <!--start second panel-->
                <asp:Panel ID="postpnl" runat="server" Visible="false">
				<!-- BEGIN .blog-entry -->
				<div class="blog-entry clearfix">
				    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
						<h3>
                            <%--<asp:LinkButton Font-Underline="true" ID="title2" runat="server" Text='<%# Bind("title") %>' ForeColor="#006600" Font-Size="Larger"> </asp:LinkButton>--%>
                            <asp:Label ID="titl" runat="server" Text='<%# Bind("title") %>' ForeColor="#006600" Font-Size="Larger" Font-Underline="true"></asp:Label> &#187;</h3>
						<p><asp:Label ID="desc1" runat="server" Text='<%# Bind("description") %>'></asp:Label></p>	
                            
              		    </ItemTemplate>
				    </asp:Repeater>
                    <asp:Repeater ID="ques" runat="server">
                        <ItemTemplate>
                            <h4><asp:Label ID="cmt" runat="server" Text='<%# Bind("comment") %>' ></asp:Label></h4>
                        </ItemTemplate>
                    </asp:Repeater>
                    <br />
                    

                    <asp:TextBox ID="qus" runat="server" CssClass="text_input" ForeColor="#000000" Width="299px"  ></asp:TextBox>
                    &nbsp;<asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click"/>
				<!-- END .blog-entry -->
				</div>
                    </asp:Panel>
                <!--end second panel-->
			<!-- END .inner-content-wrapper -->
			</div>
			
		<!-- END .main-content -->
		</div>
		
		<!-- BEGIN .sidebar-right -->
		<div class="sidebar-right page-content">
			
			<!-- BEGIN .content-block -->
			<div class="content-block">
				
                <h3 class="block-title"><a href="Artical.aspx">Artical &raquo;</a></h3>
				<ul class="event-list">
					<!-- BEGIN .event-wrapper -->
					<li class="event-wrapper clearfix">
				     <asp:Repeater ID="art1" runat="server">
                         <ItemTemplate>
						<div class="event-info">
							<h4> &raquo; <asp:Label ID="artit" runat="server" Text='<%# Truncate(DataBinder.Eval(Container.DataItem,"title").ToString(),20) %>' ForeColor="#006600"></asp:Label></h4>
						    <br />
                        </div>
				           </ItemTemplate>
                         </asp:Repeater>
					<!-- END .event-wrapper -->
					</li> 
				</ul>
			<!-- END .content-block -->	
			</div>

            <!-- BEGIN .content-block -->
			<div class="content-block">
				<h3 class="block-title"><a href="Document.aspx">Document &raquo;</a></h3>
				
				<ul class="event-list">
					<!-- BEGIN .event-wrapper -->
					<li class="event-wrapper clearfix">
					<asp:Repeater ID="dos1" runat="server">
                        <ItemTemplate>
						<div class="event-info">
							<h4> &raquo; <asp:Label ID="dos" runat="server" Text='<%# Truncate(DataBinder.Eval(Container.DataItem,"title").ToString(),20) %>' ForeColor="#006600"></asp:Label></h4><br />
						</div>
                        </ItemTemplate>
                        </asp:Repeater>
					<!-- END .event-wrapper -->
					</li>
				</ul>	
				
			<!-- END .content-block -->	
			</div>
			
		<!-- END .sidebar-right -->
		</div>
	
	<!-- END .content-wrapper -->
	</div>
	
</asp:Content>

