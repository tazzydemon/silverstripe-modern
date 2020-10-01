<div class="unit size1of3 unit-33 col-lg-3 col-sm-6 mb-4 child $EvenOdd child-{$Pos} px-0">
    <div class="overlay-holder bg-dark overlay-hover">
        <p class="child-image overlay-bg">
            <a href="{$Link}">
                <% if $FeaturedImage.exists %>
                    $FeaturedImage.Square
                <% else %>
                    $Images.First.Square
                <% end_if %>
            </a>
        </p>
        <div class="overlay">
            <h3>
                <a class="text-light" href="{$Link}">{$Title}</a>
            </h3>
        </div>
    </div>
</div>
