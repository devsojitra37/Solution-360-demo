<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

	<!-- BEGIN .slider -->
	<div class="slider clearfix">
		
		<ul class="slides slide-loader">
		
			<li style="background:url(images/slide_01.jpg) no-repeat bottom center">
				
				<div class="flex-caption-wrapper">
					<div class="flex-caption">
						<p>Change is the end result</p>
						<div class="clearboth"></div>
						<p>of all true learning.</p>
					</div>
				</div>
				
			</li>
			
			<li style="background:url(images/slide_02.jpg) no-repeat bottom center">
				
				<div class="flex-caption-wrapper">
					<div class="flex-caption">
						<p>Supposing is good,</p>
						<div class="clearboth"></div>
						<p>but finding out is better.</p>
					</div>
				</div>
				
			</li>
			
			<li style="background:url(images/slide_03.jpg) no-repeat bottom center">
				&nbsp;
			</li>

		</ul>
		
	<!-- END .slider -->
	</div><div class="header-block-wrapper clearfix">
		
		<div class="header-block-inner">
		
		<a href="Regesation.aspx" class="header-block-5 header-block-style-1 clearfix">
			<img src="images/header_icon_01.png" alt="" />
			<h2>Registration</h2>
		</a>
		
		<a href="Techpost.aspx" class="header-block-5 header-block-style-2 clearfix">
			<img src="images/header_icon_03.png" alt="" />
			<h2>Techpost</h2>
		</a>
		
		<a href="Artical.aspx" class="header-block-5 header-block-style-3 clearfix">
            <img src="images/header_icon_02.png" alt="" />
			<h2>Artical</h2>
			
		</a>
		
		<a href="Document.aspx" class="header-block-5 header-block-style-4 clearfix">
			<img src="images/icon_vk.png" alt="" />
			<h2>Document</h2>
		</a>
		
		<a href="Video.aspx" class="header-block-5 header-block-style-5 clearfix">
			<img src="images/header_icon_05.png" alt="" />
			<h2>Videos</h2>
		</a>
		
		</div>
	
	</div>
	
	<!-- BEGIN .content-wrapper -->
	<div class="content-wrapper clearfix">
		
		<!-- BEGIN .content-wrapper-inner -->
		<div class="content-wrapper-inner clearfix">
		
		<!-- BEGIN .sidebar-left -->
		<div class="sidebar-left page-content">
			
			<!-- BEGIN .content-block -->
			<div class="content-block">
					
				<h3 class="block-title"><a href="Artical.aspx">Artical &raquo;</a></h3>
				
				<ul class="event-list">
				
					<!-- BEGIN .event-wrapper -->
					<li class="event-wrapper clearfix">
				     <asp:Repeater ID="art1" runat="server">
                         <ItemTemplate>
						<div class="event-info">
							<h4> &raquo; <asp:Label ID="artit" runat="server" ForeColor="#006600" Text='<%# Truncate(DataBinder.Eval(Container.DataItem,"title").ToString(),20) %>'></asp:Label></h4>
						    <br />
                        </div>
				           </ItemTemplate>
                         </asp:Repeater>
					<!-- END .event-wrapper -->
					</li>

				</ul>
			<!-- END .content-block -->	
			</div>
		
		<!-- END .sidebar-left -->
		</div>
		
		<!-- BEGIN .center-content -->
		<div class="center-content page-content">
			
			<!-- BEGIN .content-block -->
			<div class="content-block">
				
				<h3 class="block-title"><a href="Video.aspx">Video &raquo;</a></h3>
                <asp:Repeater ID="vdo1" runat="server">
                    <ItemTemplate>
				<iframe id="vd1" runat="server" width="400" height="315" src='<%#Bind("file_url_frem") %>'></iframe>
                <br /><br />
                        </ItemTemplate>
                        </asp:Repeater>								
			<!-- END .content-block -->	
			</div>
			
		<!-- END .center-content -->
		</div>
		
		<!-- BEGIN .sidebar-right -->
		<div class="sidebar-right page-content">
			<!-- BEGIN .content-block -->
			<div class="content-block">
				
				<h3 class="block-title"><a href="Techpost.aspx">TechPost &raquo;</a></h3>
				
				<ul class="event-list">
				
					<!-- BEGIN .event-wrapper -->
					<li class="event-wrapper clearfix">
					<asp:Repeater ID="tech1" runat="server">
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
        <!-- BEGIN .content-block -->
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
		
		<!-- END .content-wrapper-inner -->
		</div>
		
	<!-- END .content-wrapper -->
	</div>

</asp:Content>

