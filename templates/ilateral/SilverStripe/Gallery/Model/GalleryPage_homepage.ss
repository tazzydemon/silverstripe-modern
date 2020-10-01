<div class="container-fluid">
    <h2 class="text-center"><span>$MenuTitle</span></h2>
    <p class="text-center">$Content.Summary</p>
    <% if $Images %>
        <div class="row">
            <% loop $Images.Limit(4) %>
                <div class="unit size1of3 unit-33 col-lg-3 col-sm-6 mb-4 child $EvenOdd child-{$Pos} px-0">
                    <div class="overlay-holder bg-dark overlay-hover">
                        <p class="child-image overlay-bg">
                            <a href="{$Top.Link}">
                                $Square
                            </a>
                        </p>
                        <div class="overlay">
                            <h3>
                                <a class="text-light" href="{$Top.Link}">{$Title}</a>
                            </h3>
                        </div>
                    </div>
                </div>
            <% end_loop %>
        </div>
    <% end_if %>
    <p class="text-center"><a class="btn btn-primary" href="$Link"><strong>See all $MenuTitle</strong></a></p>
</div>