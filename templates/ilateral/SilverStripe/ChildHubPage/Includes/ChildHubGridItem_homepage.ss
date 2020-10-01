<div class="unit size1of3 unit-33 col-lg-3 col-sm-6 mb-4 child $EvenOdd child-{$Pos}">
    <div class="h-100 card">
        <% if $FeaturedImage.exists %>
            <p class="child-image">
                <a href="{$Link}">
                    $FeaturedImage.Fill(600,600)
                </a>
            </p>
        <% end_if %>
        <div class="card-body">
            <h3>
                <a href="{$Link}">{$Title}</a>
            </h3>

            <p>$Content.FirstParagraph</p>
            
            <% include MoreLink %>
        </div>
    </div>
</div>
