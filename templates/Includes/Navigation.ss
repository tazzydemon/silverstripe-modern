<nav class="col navbar navbar-expand-lg navbar-light navbar-main">  
	<div class="collapse navbar-collapse" id="MainNav">
	  <ul class="navbar-nav ml-sm-auto">
		<% if $CustomMenu('main-menu') %>
			<% loop $CustomMenu('main-menu') %>
				<% include NavItem %>
			<% end_loop %>
		<% else %>
			<% loop $Menu(1) %>
				<% include NavItem %>
			<% end_loop %>
		<% end_if %>
	  </ul>
	</div>
</nav>