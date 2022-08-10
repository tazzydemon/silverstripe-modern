<div class="container">
	<div class="row">
		<div class="col-sm content-container" role="main">
			<article>
				<div class="content">$Content</div>
			</article>

			$Form
			$PageComments
		</div>
		<% if $Menu(2) || $SideBarView.Widgets %>
			<% include SideBar %>
		<% end_if %>
	</div>
</div>