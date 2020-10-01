<% require css("i-lateral/silverstripe-gallery: client/dist/css/gallery.min.css") %>

<% include Banner %>
<div class="container">
	<div class="row">
		<div class="content-container col-sm">
			<article class="gallery-hub">
				<div class="content">$Content</div>

				<% if $PaginatedGalleries.exists %>
					<div class="gallery-thumbnails">
						<div class="row line">
							<% loop $PaginatedGalleries %>
								<div class="unit size1of4 col-lg-3 col-md-4 col-6 px-0">
								<figure class="bg-dark<% if $Top.ShowImageTitles %> overlay-holder overlay-hover<% end_if %>">
										<a class="text-light" href="{$Link}" title="{$Title}">
											<img
												class="gallery-thumbnail img-fluid img-responsive w-100 p-0 overlay-bg"
												data-src="{$GalleryThumbnail.Link}"
												src="{$GalleryThumbnail.MicroImage.Link}"
												alt="{$GalleryThumbnail.Title}"
											/>
											<% if $Top.ShowImageTitles %>
												<figcaption class="overlay">$Title</figcaption>
											<% end_if %>
										</a>
									</figure>
								</div>
							<% end_loop %>
						</div>
					</div>

					<% with $PaginatedGalleries %>
						<% include Pagination %>
					<% end_with %>
				<% end_if %>
			</article>
		</div>
		<% if $ShowSideBar && $Menu(2).exists %>
			<% include SideBar %>
		<% end_if %>
	</div>
</div>