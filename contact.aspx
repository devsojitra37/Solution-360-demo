<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    	<!-- BEGIN .page-header -->
	<div class="page-header clearfix">
		
		<div class="page-header-inner clearfix">
		
		<div class="page-title">	
			<h2>Contact Us</h2>
			<div class="page-title-block"></div>
		</div>
		
		<div class="breadcrumbs">
			<p><a href="Default.aspx">Home</a> &#187; Contact Us</p>
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
			
			
			<div id="contactform" class="clearfix" >

				<div class="field-row">
					<label for="contact_name">Name</label>
                    <asp:TextBox ID="name" runat="server" ForeColor="#000000" CssClass="text_input"></asp:TextBox>
				</div>

				<div class="field-row">
					<label for="email">Email</label>
	
                    <asp:TextBox ID="email" runat="server" ForeColor="#000000" CssClass="text_input"></asp:TextBox>
		
				</div>

				<div class="field-row">
					<label for="message_text">Message</label>
                     <asp:TextBox ID="msg" runat="server" ForeColor="#000000" CssClass="text_input" TextMode="MultiLine" Width="332px"></asp:TextBox>
		
				</div>
                <asp:Button ID="btn" runat="server" Text="Submit" OnClick="btn_Click" />
			</div>
			
			<!-- END .inner-content-wrapper -->
			</div>
			
		<!-- END .main-content -->
		</div>
		
		<!-- BEGIN .sidebar-right -->
		<div class="sidebar-right page-content">
			
			<%--<!-- BEGIN .content-block -->
			<div class="content-block">
				
				<h3 class="block-title">Contact Info</h3>
				
				<ul class="contact-widget">
					<li><span class="contact-phone">(+91) 0123456789</span></li>
					<li><span class="contact-email">Contact@Solution360.com</span></li>
				</ul>
				
			<!-- END .content-block -->	
			</div>--%>
			
			<!-- BEGIN .content-block -->
			<%--<div class="content-block">
				
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
			</div>--%>
            <!-- BEGIN .content-block -->
			<div class="content-block">
					
				<h3 class="block-title"><a href="Artical.aspx">Artical &raquo;</a></h3>
				
				<ul class="event-list">
				
				<!-- BEGIN .event-wrapper -->
					<li class="event-wrapper clearfix">
				     <asp:Repeater ID="art1" runat="server">
                         <ItemTemplate>
						<div class="event-info">
							<h4> &raquo; <asp:Label ID="artit" ForeColor="#006600" runat="server" Text='<%# Truncate(DataBinder.Eval(Container.DataItem,"title").ToString(),20) %>'></asp:Label></h4>
						    <br />
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

