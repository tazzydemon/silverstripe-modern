<div class="post-summary $EvenOdd brand-section-$Modulus(3) waypoint-element animate-out">
	<div class="row align-items-stretch">
		<div class="col-md-6 chevron-holder px-0 order-1<% if $Even %> order-md-3<% end_if %>">
			<p class="post-image mb-0">
				<a href="$Link" title="<%t SilverStripe\\Blog\\Model\\Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
					<% if $FeaturedImage %>
						$FeaturedImage.ContentBanner
					<% else %>
						$Parent.FeaturedImage.ContentBanner
					<% end_if %>
				</a>
			</p>
		</div>
		<div class="col-md-6 order-2 d-flex align-items-center">
			<div class="p-5<% if $Odd %> text-md-right<% end_if %>">
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
	</div>
</div>
