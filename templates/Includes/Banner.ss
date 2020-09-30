<% if $MapEmbed %>
    <div class="map-row bg-dark">
        <div class="mb-4 embed-responsive embed-responsive-map">
            $MapEmbed
        </div>
    </div>
<% else_if $FeaturedImage %>
    <p class="banner-image mb-4 bg-dark">
        $FeaturedImage.FullwidthBanner
    </p>
<% else_if $Parent.FeaturedImage %>
    <p class="banner-image mb-4 bg-dark">
        $Parent.FeaturedImage.FullwidthBanner
    </p>
<% end_if %>

<div class="container">
    <div class="row">
        <div class="col">
            <h1<% if not $Level(2) %> class="text-center"<% end_if %>>
                $Title
            </h1>
        </div>
        <% include BreadCrumbs %>
    </div>
</div>