<div class="card child child-{$Pos} mb-4">
    <div class="line row">
        <% if $FeaturedImage.exists %>
            <div class="unit size1of3 col-sm-4">
                <p class="mb-0">
                    <a href="{$Link}">
                        $FeaturedImage.Fill(600,400)
                    </a>
                </p>
            </div>
        <% end_if %>
        
    <div class="unit<% if $FeaturedImage.exists %> col-sm-8<% else %> col-sm-12<% end_if %> card-body">
            <h2>
                <a href="{$Link}">{$Title}</a>
            </h2>

            <p>$Content.FirstParagraph</p>
            
            <% include MoreLink %>

        </div>
    </div>
</div>
