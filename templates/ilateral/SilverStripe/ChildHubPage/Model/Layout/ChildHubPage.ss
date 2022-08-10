<div class="container">
    <div class="row">
        <div class="content-container col-sm">
            <article>
                <div class="content<% if not $ShowSideBar %> column-content<% end_if %>">$Content</div>
            </article>
            
            <% if $PaginatedChildren.exists %>
                <div class="child-list">
                    <% if $ShowChildrenAs == "Grid" %>
                        <div class="line row units-row child-list">
                            <% loop $PaginatedChildren %>
                                <% include ilateral\\SilverStripe\\ChildHubPage\\ChildHubGridItem %>
                            <% end_loop %>
                        </div>
                    <% else %>
                        <% loop $PaginatedChildren %>
                            <% include ilateral\\SilverStripe\\ChildHubPage\\ChildHubListItem %>
                        <% end_loop %>
                    <% end_if %>
                </div>
                <% with $PaginatedChildren %>
                    <% include ilateral\\SilverStripe\\ChildHubPage\\Pagination %>
                <% end_with %>
            <% end_if %>
            
            $Form
            $CommentsForm
        </div>
        <% if $ShowSideBar %>
            <% if $Menu(2) || $SideBarView.Widgets %>
                <% include SideBar %>
            <% end_if %>
        <% end_if %>
    </div>
</div>