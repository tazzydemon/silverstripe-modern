<% if $FeaturedImage %>
    <div class="overlay-holder">
        <p class="banner-image mb-4 bg-dark overlay-bg">
            $FeaturedImage.FullwidthBanner
        </p>
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
<% else_if $Parent.FeaturedImage %>
    <div class="overlay-holder">
        <p class="banner-image mb-4 bg-dark overlay-bg">
            $Parent.FeaturedImage.FullwidthBanner
        </p>
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
<% else %>
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
<% end_if %>
