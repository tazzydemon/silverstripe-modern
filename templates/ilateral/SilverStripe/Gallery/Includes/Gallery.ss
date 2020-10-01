<% if $Images %>
    <div class="gallery-thumbnails mb-4">
        <div class="row line">
            <% loop $Images %>
                <% with $GalleryThumbnail %>
                    <div class="col-lg-3 col-md-4 col-6 unit px-0">
                        <figure class="mb-0 bg-dark<% if $Top.ShowImageTitles %> overlay-holder overlay-hover<% end_if %>" data-url="{$Up.GalleryImage.Link}">
                            <img
                                class="gallery-thumbnail img-fluid w-100 img-responsive p-0 overlay-bg"
                                data-src="{$Link}"
                                src="{$MicroImage.Link}"
                                alt="{$Title}"
                            />
                            <% if $Top.ShowImageTitles %>
                                <figcaption class="overlay text-light">$Title</figcaption>
                            <% end_if %>
                        </figure>
                    </div>
                <% end_with %>
            <% end_loop %>
        </div>
    </div>

    <% with $PaginatedImages %>
        <% include Pagination %>
    <% end_with %>
<% end_if %>
