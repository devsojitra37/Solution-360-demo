<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Artical.aspx.cs" Inherits="Artical" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- BEGIN .page-header -->
	<div class="page-header clearfix">
		
		<div class="page-header-inner clearfix">
		
		<div class="page-title">	
			<h2>Artical</h2>
			<div class="page-title-block"></div>
		</div>
		
		<div class="breadcrumbs">
			<p><a href="Default.aspx">Home</a> &#187; Artical</p>
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
				<asp:Panel runat="server" ID="art1">
				<!-- BEGIN .blog-entry -->
				<div class="blog-entry clearfix">
					<asp:Repeater ID="art" runat="server" OnItemCommand="art_ItemCommand"><ItemTemplate>	
						<h3><asp:LinkButton ID="artlb" runat="server" ForeColor="#006600" Font-Underline="true" Font-Size="Larger"  Text='<%# Truncate(DataBinder.Eval(Container.DataItem,"title").ToString(),40) %>' CommandName="art" CommandArgument='<%# Bind("id") %>'></asp:LinkButton> 
                            <%--<asp:Label ID="artlbl" runat="server" Text='<%# Bind("title") %>'></asp:Label>--%> &#187;</a></h3>
			             <%--<div style="height:auto"></div><p><asp:Label ID="descr" runat="server" Text='<%# Truncate(DataBinder.Eval(Container.DataItem,"description").ToString(),500) %>'></asp:Label></p></div>--%>
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
                <asp:Panel runat="server" ID="artpanl" Visible="true">
				<!-- BEGIN .blog-entry -->
				<div class="blog-entry clearfix">
					<asp:Repeater ID="artrpt" runat="server"><ItemTemplate>	
						<h3><%--<asp:LinkButton ID="artlb1" runat="server" ForeColor="#006600" Font-Underline="true" Text='<%# Bind("title") %>' CommandName="art" CommandArgument='<%# Bind("id") %>'></asp:LinkButton>--%> 
                            <asp:Label ID="artlbl" runat="server" Text='<%# Bind("title") %>' ForeColor="#006600" Font-Underline="true" Font-Size="Larger"></asp:Label> &#187;</a></h3>
						<p><asp:Label ID="descr1" runat="server" Text='<%# Bind("description") %>'></asp:Label></p>	
					
                        </ItemTemplate>
                        </asp:Repeater>
				
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
				
				<h3 class="block-title"><a href="Techpost.aspx">TechPost &raquo;</a></h3>
				
				<ul class="event-list">
				
					<!-- BEGIN .event-wrapper -->
					<li class="event-wrapper clearfix">
					<asp:Repeater ID="tech1" runat="server" OnItemCommand="tech1_ItemCommand">
                        <ItemTemplate>
						<div class="event-info">
							<h4> &raquo; <asp:Label ID="teh" runat="server" ForeColor="#006600" Text='<%# Truncate(DataBinder.Eval(Container.DataItem,"title").ToString(),20) %>'></asp:Label></h4><br />
						</div>
                        </ItemTemplate>
                        </asp:Repeater>
					<!-- END .event-wrapper -->
					</li>
				
				</ul>
				
			<!-- END .content-block -->	
			</div>
			<div class="content-block">
				
				<h3 class="block-title"><a href="Document.aspx">Document &raquo;</a></h3>
				
				<ul class="event-list">
					<!-- BEGIN .event-wrapper -->
					<li class="event-wrapper clearfix">
					<asp:Repeater ID="dos1" runat="server">
                        <ItemTemplate>
						<div class="event-info">
							<h4> &raquo; <asp:Label ID="dos" runat="server" ForeColor="#006600" Text='<%# Truncate(DataBinder.Eval(Container.DataItem,"title").ToString(),20) %>'></asp:Label></h4><br />
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

