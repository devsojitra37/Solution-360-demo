<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .password
        {
            width: 350px;
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     	<!-- BEGIN .page-header -->
	<div class="page-header clearfix">
		
		<div class="page-header-inner clearfix">
		
		<div class="page-title">	
			<h2>Log in</h2>
			<div class="page-title-block"></div>
		</div>
		
		<div class="breadcrumbs">
			<p><a href="Default.aspx">Home</a> &#187; Login</p>
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
			
			
			<div id="contactform" class="clearfix">

				<div class="field-row">
					<label for="contact_name">User Name</label>
                    <asp:TextBox ID="txt_uname" runat="server" ForeColor="#000000" CssClass="text_input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv" runat="server" ControlToValidate="txt_uname" ErrorMessage="Enter User Name" ValidationGroup="v2" SetFocusOnError="true"></asp:RequiredFieldValidator>
				</div>

				<div class="field-row">
					<label for="password">Password<br />
                    </label>
					
                    <asp:TextBox ID="password" runat="server" CssClass="password" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="password" ErrorMessage="Enter Password" ValidationGroup="v2" SetFocusOnError="true"></asp:RequiredFieldValidator>
				</div>
                <br />
                <br />
                <div class="field-row">
                <asp:Button ID="btn" runat="server" CssClass="button1" Text="Login" OnClick="btn_Click" ValidationGroup="v2" />  
                    <br />
                    <br />
                    <br />
                    <br />
			    </div>
                <div class="field-row">
                    <a href="forgotpassword.aspx"><asp:label id="for" runat="server" Text="Forgotten Password ?" Font-Size="Large" ForeColor="#006600"></asp:label></a>
                </div>
			</div>
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
			<%--<div class="content-block">
				
				<h3 class="block-title"><a href="Document.aspx">Document &raquo;</a></h3>
				
				<ul class="event-list">
					<!-- BEGIN .event-wrapper -->
					<li class="event-wrapper clearfix">
					<asp:Repeater ID="dos1" runat="server">
                        <ItemTemplate>
						<div class="event-info">
							<h4> &raquo; <asp:Label ID="dos" ForeColor="#006600" runat="server" Text='<%# Truncate(DataBinder.Eval(Container.DataItem,"title").ToString(),20) %>'></asp:Label></h4><br />
						</div>
                        </ItemTemplate>
                        </asp:Repeater>
					<!-- END .event-wrapper -->
					</li>
				</ul>
				
			<!-- END .content-block -->	
			</div>--%>
			
		<!-- END .sidebar-right -->
		</div>
	
	<!-- END .content-wrapper -->
	</div>

       	

</asp:Content>

