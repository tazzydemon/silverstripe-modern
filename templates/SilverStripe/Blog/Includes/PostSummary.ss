<div class="post-summary card mb-4">
	<p class="post-image">
		<a href="$Link" title="<%t SilverStripe\\Blog\\Model\\Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
			<% if $FeaturedImage %>
				$FeaturedImage.Fill(1080,400)
			<% else %>
				$Parent.FeaturedImage.Fill(950,400)
			<% end_if %>
		</a>
	</p>
	<div class="card-body">
		<h2>
			<a href="$Link" title="<%t SilverStripe\\Blog\\Model\\Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
				<% if $MenuTitle %>$MenuTitle
				<% else %>$Title<% end_if %>
			</a>
		</h2>

		<% include SilverStripe\\Blog\\EntryMeta %>

		<% if $Summary %>
			$Summary
		<% else %>
			<p>$Excerpt</p>
		<% end_if %>
		<% include MoreLink %>

	</div>
</div>
