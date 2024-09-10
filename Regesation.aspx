<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Regesation.aspx.cs" Inherits="Regesation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .text_input
        {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <!-- BEGIN .page-header -->
	<div class="page-header clearfix">
		
		<div class="page-header-inner clearfix">
		
		<div class="page-title">	
			<h2>Registration</h2>
			<div class="page-title-block"></div>
		</div>
		
		<div class="breadcrumbs">
			<p><a href="Default.aspx">Home</a> &#187; Registration</p>
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
					<label for="contact_name">Expert Name</label>
                    <asp:TextBox ID="E_name" runat="server" ForeColor="#000000" CssClass="text_input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv" runat="server" ControlToValidate="E_name" ErrorMessage="Enter your Name" ValidationGroup="v1" SetFocusOnError="true"></asp:RequiredFieldValidator>
				</div>

				<div class="field-row">
					<label for="department">Department</label>
                    <asp:TextBox ID="Department" runat="server" ForeColor="#000000" CssClass="text_input"></asp:TextBox>		
                    <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="Department" ErrorMessage="Enter Department" ValidationGroup="v1" SetFocusOnError="true"></asp:RequiredFieldValidator>
				</div>

				<div class="field-row"> 
					<label for="qualifition">Qualification</label>
                    <asp:TextBox ID="Qut" runat="server" ForeColor="#000000" CssClass="text_input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="Qut" ErrorMessage="Enter Qualification" ValidationGroup="v1" SetFocusOnError="true">
                    </asp:RequiredFieldValidator>
				</div>

                <div class="field-row">
                    <label for="subject">Subject</label>
                     <asp:TextBox ID="sub" runat="server" ForeColor="#000000" CssClass="text_input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv3" runat="server" ControlToValidate="sub" ErrorMessage="Enter Subject" ValidationGroup="v1" SetFocusOnError="true"></asp:RequiredFieldValidator>
                </div>
                <div class="field-row">
                    <label for="image">Image</label>
                     <asp:FileUpload ID="fup1" runat="server" />
                    <asp:RequiredFieldValidator ID="rfv4" runat="server" ControlToValidate="fup1" ErrorMessage="Upload Image" ValidationGroup="v1" SetFocusOnError="true"></asp:RequiredFieldValidator>
                </div>
                <br />
				<div class="field-row">
                    <label for="email">E-Mail</label>
                     <asp:TextBox ID="TextBox1" runat="server" ForeColor="#000000" CssClass="text_input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv5" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter E-Mail ID" Display="Dynamic" ValidationGroup="v1" SetFocusOnError="true"></asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="rev" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Valid E-Mail ID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  Display="Dynamic" ValidationGroup="v1" SetFocusOnError="true"></asp:RegularExpressionValidator>
                </div>
				<div class="field-row">
                    <label for="Address">Address</label>
                     <asp:TextBox ID="ads" runat="server" ForeColor="#000000" CssClass="text_input" TextMode="MultiLine" Height="40px" Width="340px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv6" runat="server" ControlToValidate="ads" ErrorMessage="Enter Address" ValidationGroup="v1" SetFocusOnError="true"></asp:RequiredFieldValidator>
                </div>
                <div class="field-row">
                    <label for="Password">Password</label>
                     <asp:TextBox ID="txt_pass" runat="server"  CssClass="text_input" TextMode="Password" Height="33px" Width="363px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfv7" runat="server" ControlToValidate="txt_pass" ErrorMessage="Enter Password" ValidationGroup="v1" SetFocusOnError="true"></asp:RequiredFieldValidator>
                </div>
                <br /><br />

				    <asp:Button ID="btn" runat="server" Text="Submit" OnClick="btn_Click" ValidationGroup="v1" />
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
							<h4> &raquo; <asp:Label ID="teh" ForeColor="#006600" runat="server" Text='<%# Truncate(DataBinder.Eval(Container.DataItem,"title").ToString(),20) %>'></asp:Label></h4><br />
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
							<h4> &raquo; <asp:Label ID="dos" ForeColor="#006600" runat="server" Text='<%# Truncate(DataBinder.Eval(Container.DataItem,"title").ToString(),20) %>'></asp:Label></h4><br />
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

