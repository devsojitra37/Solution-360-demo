<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="blog.aspx.cs" Inherits="blog" %>

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
				
				<!-- BEGIN .blog-entry -->
				<div class="blog-entry clearfix">
					
					<%--<div class="blog-info">
						<%--<div class="blog-date">
							<h3>18 <span>Oct</span></h3>
						</div>--%>
						<%--<ul class="blog-meta">
							<li><strong>By</strong> John Smith</li>
							
						</ul>
					</div>--%>
					
					<div class="blog-content">	
						<%--<a href="blog-single.html"><img src="images/02_demo_image.jpg" alt="" class="blog-image" /></a>--%>
						<h3><a href="blog-single.html">Dasellus ac nibh urna donec ac urna &#187;</a></h3>
						<p>Aenean interdum nisi sit amet felis auctor a vestibulum diam lacinia. Quisque nec nibh at neque convallis vestibulum vitae at arcu. Aliquam ligula ligula, aliquet non facilisis vitae, sollicitudin at tellus mauris non.</p>	
					</div>
				
				<!-- END .blog-entry -->
				</div>
				
				<%--<!-- BEGIN .blog-entry -->
				<div class="blog-entry clearfix">
					
					<div class="blog-info">
						<div class="blog-date">
							<h3>18 <span>Oct</span></h3>
						</div>
						<ul class="blog-meta">
							<li><strong>By</strong> John Smith</li>
							<li><strong>In</strong> Style</li>
							<li><strong>Comments</strong> None</li>
						</ul>
					</div>
					
					<div class="blog-content">	
						<a href="blog-single.html"><img src="images/12_demo_image.jpg" alt="" class="blog-image" /></a>
						<h3><a href="blog-single.html">Dasellus ac nibh urna donec ac urna &#187;</a></h3>
						<p>Aenean interdum nisi sit amet felis auctor a vestibulum diam lacinia. Quisque nec nibh at neque convallis vestibulum vitae at arcu. Aliquam ligula ligula, aliquet non facilisis vitae, sollicitudin at tellus mauris non.</p>	
					</div>
				
				<!-- END .blog-entry -->
				</div>
				
				<!-- BEGIN .blog-entry -->
				<div class="blog-entry clearfix">
					
					<div class="blog-info">
						<div class="blog-date">
							<h3>18 <span>Oct</span></h3>
						</div>
						<ul class="blog-meta">
							<li><strong>By</strong> John Smith</li>
							<li><strong>In</strong> Style</li>
							<li><strong>Comments</strong> None</li>
						</ul>
					</div>
					
					<div class="blog-content">	
						<a href="blog-single.html"><img src="images/13_demo_image.jpg" alt="" class="blog-image" /></a>
						<h3><a href="blog-single.html">Dasellus ac nibh urna donec ac urna &#187;</a></h3>
						<p>Aenean interdum nisi sit amet felis auctor a vestibulum diam lacinia. Quisque nec nibh at neque convallis vestibulum vitae at arcu. Aliquam ligula ligula, aliquet non facilisis vitae, sollicitudin at tellus mauris non.</p>	
					</div>
				
				<!-- END .blog-entry -->
				</div>--%>
				
				<div class="pagination-wrapper">
					<a class="selected" href="#">1</a>
					<a href="#">2</a>
					<a href="#">3</a>
					<a href="#">></a>
				</div>
				
				<div class="clearboth"></div>
			
			<!-- END .inner-content-wrapper -->
			</div>
			
		<!-- END .main-content -->
		</div>
		
		<!-- BEGIN .sidebar-right -->
		<div class="sidebar-right page-content">
			
			<!-- BEGIN .content-block -->
			<div class="content-block">
				
				<h3 class="block-title">Quick Links</h3>
				
				<ul>
					<li><a href="#">Students</a></li>
					<li><a href="#">Expert</a></li>
				
				</ul>
				
			<!-- END .content-block -->	
			</div>
			
			<!-- BEGIN .content-block -->
			<div class="content-block">
				
				<h3 class="block-title"><a href="events.html">Testing &raquo;</a></h3>
				
				<ul class="event-list">
				
					
				
				</ul>
				
			<!-- END .content-block -->	
			</div>
			
			<!-- BEGIN .content-block -->
			<div class="content-block">
					
				<h3 class="block-title"><a href="#">Testing &raquo;</a></h3>
				
					</div>
				
			<!-- END .content-block -->

		
		<!-- END .sidebar-right -->
		</div>
	
	<!-- END .content-wrapper -->
	</div>

</asp:Content>

