<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Document.aspx.cs" Inherits="Document" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    	<!-- BEGIN .page-header -->
	<div class="page-header clearfix">
		
		<div class="page-header-inner clearfix">
		
		<div class="page-title">	
			<h2>Documents</h2>
			<div class="page-title-block"></div>
		</div>
		
		<div class="breadcrumbs">
			<p><a href="Default.aspx">Home</a> &#187; Documents</p>
		</div>
		
		</div>
		
	<!-- END .page-header -->
	</div>
	
	<!-- BEGIN .content-wrapper -->
	<div class="content-wrapper page-content-wrapper clearfix">
		
		<!-- BEGIN .main-content-full -->
		<div class="main-content-full page-content">
			
			<!-- BEGIN .inner-content-wrapper -->
			<div class="inner-content-wrapper">
				
				<ul class="teacher-4">
					<asp:Repeater ID="doc1" runat="server"  OnItemCommand="doc1_ItemCommand" EnableTheming="True"><ItemTemplate>
                        <li>
						<img src="images/document-icon1 copy.PNG" alt="" />
						<h3 class="teacher-title">
                            <%--<asp:HyperLink ID="dlbl" runat="server" Text='<%# Bind("title") %>'>

                            </asp:HyperLink>--%>
                            <asp:LinkButton ID="dosc2" runat="server" Text='<%# Truncate(DataBinder.Eval(Container.DataItem,"title").ToString(),15) %>' CommandName="new_tabe" CommandArgument='<%# Bind("file_url") %>' ForeColor="#ffffff" Font-Size="Larger"></asp:LinkButton>
						</h3>
					</li>
                        </ItemTemplate></asp:Repeater>
				</ul>
						
			<!-- END .inner-content-wrapper -->
			</div>
			
		<!-- END .main-content-full -->
		</div>
	
	<!-- END .content-wrapper -->
	</div>

</asp:Content>

