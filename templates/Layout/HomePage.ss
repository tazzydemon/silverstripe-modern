<% include Banner %>
<div class="container">
	<div class="row">
		<% if $Menu(2) || $SideBarView.Widgets %>
			<% include SideBar %>
		<% end_if %>

		<div class="col-sm content-container" role="main">
			<article>
				<div class="content<% if not $Menu(2) && not $SideBarView.Widgets %> column-content<% end_if %>">$Content</div>
			</article>

			$Form
			$PageComments
		</div>
	</div>
</div>
<% if $RenderedSections %>
	<% loop $RenderedSections %>
		<div class="section $EvenOdd py-3 pos-$Pos" id="$URLSegment">
			$Layout.RAW
		</div>
	<% end_loop %>
<% end_if %>