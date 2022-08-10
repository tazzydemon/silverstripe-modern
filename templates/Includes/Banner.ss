<div class="overlay-holder">
    <% if $FeaturedImage %>
        <p class="banner-image mb-4 bg-dark overlay-bg">
            $FeaturedImage.Fill(1920,650)
        </p>
    <% else_if $Parent.FeaturedImage %>
        <p class="banner-image mb-4 bg-dark overlay-bg">
            $Parent.FeaturedImage.Fill(1920,650)
        </p>
    <% else %>
        <div class="banner-spacer mb-4"></div>
    <% end_if %>

    <div class="overlay overlay-bottom text-light w-100">
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
    </div>
</div>