<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forgotpassword.aspx.cs" Inherits="forgotpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-header clearfix">
		
		<div class="page-header-inner clearfix">
		
		<div class="page-title">	
			<h2>Forgotten Password</h2>
			<div class="page-title-block"></div>
		</div>
		
		<div class="breadcrumbs">
			<p><a href="Default.aspx">Home</a> &#187; Forgotten Password</p>
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
			<div class="field-row">
                <br />
                    <label for="email">E-Mail ID</label>
                     <asp:TextBox ID="mail_id" runat="server" ForeColor="#000000" CssClass="text_input" Width="348px"></asp:TextBox>
                <br />
                    <asp:RequiredFieldValidator ID="mail1" runat="server" ControlToValidate="mail_id" ErrorMessage="Enter E-Mail ID" Display="Dynamic" ValidationGroup="v1" SetFocusOnError="true"></asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="mail2" runat="server" ControlToValidate="mail_id" ErrorMessage="Enter Valid E-Mail ID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  Display="Dynamic" ValidationGroup="v1" SetFocusOnError="true"></asp:RegularExpressionValidator>
             </div>
                <br />
                <br />
                <div class="field-row">
                <asp:Button ID="forgot" runat="server" CssClass="button1" Text="Send" OnClick="forgot_Click" ValidationGroup="v2" />  
                    
			    </div>
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

