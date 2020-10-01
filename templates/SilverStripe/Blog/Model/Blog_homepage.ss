<h2 class="h1 text-light text-center">$MenuTitle</h2>
<% if $BlogPosts.Exists %>
    <% loop $BlogPosts.Limit(3) %>
        <div class="container-fluid">
            <% include SilverStripe\\Blog\\PostSummary_homepage %>
        </div>
    <% end_loop %>
<% else %>
    <p><%t SilverStripe\\Blog\\Model\\Blog.NoPosts 'There are no posts' %></p>
<% end_if %>
