<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Video.aspx.cs" Inherits="Video" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- BEGIN .page-header -->
	<div class="page-header clearfix">
		
		<div class="page-header-inner clearfix">
		
		<div class="page-title">	
			<h2>Video Gallery</h2>
			<div class="page-title-block"></div>
		</div>
		
		<div class="breadcrumbs">
			<p><a href="Default.aspx">Home</a> &#187; Video Gallery</p>
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

				<div id='gallery-1' class='gallery gallery-columns-2'>
					
					<dl class='gallery-item'>	
						<dt class='gallery-icon'>
                            <asp:DataList ID="vdo" runat="server" OnItemCommand="vdo_ItemCommand" RepeatColumns="2">
                                <ItemTemplate>
                                <iframe id="vdo1" runat="server" width="450" height="315" src='<%# Bind("file_url_frem") %>'></iframe>
							    <asp:Label ID="vdotil" runat="server" Text='<%# Truncate(DataBinder.Eval(Container.DataItem,"title").ToString(),20) %>' ForeColor="#006600" Font-Size="Larger"></asp:Label><br />
                                 </ItemTemplate>
                             </asp:DataList>
						</dt>
					</dl>
					<br style='clear: both;' />
				
				</div>

			<!-- END .inner-content-wrapper -->
			</div>
			
		<!-- END .main-content-full -->
		</div>
	
	<!-- END .content-wrapper -->
	</div>
	
</asp:Content>

