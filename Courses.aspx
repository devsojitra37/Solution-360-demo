<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Courses.aspx.cs" Inherits="Courses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	
    	
	<!-- BEGIN .page-header -->
	<div class="page-header clearfix">
		
		<div class="page-header-inner clearfix">
		
		<div class="page-title">	
			<h2>Courses</h2>
			<div class="page-title-block"></div>
		</div>
		
		<div class="breadcrumbs">
			<p><a href="index.html">Home</a> &#187; Courses</p>
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
				
				<div class="course-finder-full clearfix">
					
					<div class="course-finder-icon"></div>
					<div class="course-finder-full-form">
						
						<form method="get" action="#" class="clearfix">

							<select name="keyword-type">
								<option value="Course ID">Course ID</option>
								<option value="Course ID">Course ID</option>
								<option value="Course ID">Course ID</option>
							</select>

							<input type="text" value="Keywords" name="keywords" />
							<input type="submit" value="Search" />

						</form>
						
					</div>
					
				</div>
				
				<table style="width:100%;">
					<thead>
						<tr>
							<th>ID</th>
							<th>Course Name</th>
							<th>Program</th>
							<th>Length</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td data-title="ID">001</td>
							<td data-title="Course Name"><a href="#">Testing</a></td>
							<td data-title="Program">Testing</td>
							<td data-title="Length">Year</td>
						</tr>
						<tr>
							<td data-title="ID">002</td>
							<td data-title="Course Name"><a href="#">Testing</a></td>
							<td data-title="Program">Testing</td>
							<td data-title="Length">Year</td>
						</tr>
                        <tr>
							<td data-title="ID">003</td>
							<td data-title="Course Name"><a href="#">Testing</a></td>
							<td data-title="Program">Testing</td>
							<td data-title="Length">Year</td>
						</tr>
                        <tr>
							<td data-title="ID">004</td>
							<td data-title="Course Name"><a href="#">Testing</a></td>
							<td data-title="Program">Testing</td>
							<td data-title="Length">Year</td>
						</tr>
                        <tr>
							<td data-title="ID">005</td>
							<td data-title="Course Name"><a href="#">Testing</a></td>
							<td data-title="Program">Testing</td>
							<td data-title="Length">Year</td>
						</tr>
                        <tr>
							<td data-title="ID">006</td>
							<td data-title="Course Name"><a href="#">Testing</a></td>
							<td data-title="Program">Testing</td>
							<td data-title="Length">Year</td>
						</tr>
                        <tr>
							<td data-title="ID">007</td>
							<td data-title="Course Name"><a href="#">Testing</a></td>
							<td data-title="Program">Testing</td>
							<td data-title="Length">Year</td>
						</tr>
                        <tr>
							<td data-title="ID">008</td>
							<td data-title="Course Name"><a href="#">Testing</a></td>
							<td data-title="Program">Testing</td>
							<td data-title="Length">Year</td>
						</tr>
				</tbody>
				</table>
				
				<div class="pagination-wrapper" style="margin: 20px 0 50px 0;">
					<a class="selected" href="#">1</a>
					<a href="#">2</a>
					<a href="#">3</a>
					<a href="#">></a>
				</div>
			
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
				
				<h3 class="block-title"><a href="#">TechPost &raquo;</a></h3>
				
				<ul class="event-list">
				
					<!-- BEGIN .event-wrapper -->
					<li class="event-wrapper clearfix">
					
						Testing
					<!-- END .event-wrapper -->
					</li>
                    <br />
                    <br />
				
					<!-- BEGIN .event-wrapper -->
					<li class="event-wrapper clearfix">
					
						Testing
				
					<!-- END .event-wrapper -->
					</li>
                    <br />
                    <br />
					
					<!-- BEGIN .event-wrapper -->
					<li class="event-wrapper clearfix">
					
						Testing
				
					<!-- END .event-wrapper -->
					</li>
				
				</ul>
				
			<!-- END .content-block -->	
			</div>

			
			<!-- BEGIN .content-block -->
			<div class="content-block">
					
				
				
						
			<!-- END .content-block -->
			</div>
		
		<!-- END .sidebar-right -->
		</div>
	
	<!-- END .content-wrapper -->
	</div>
	
	
	
</asp:Content>

