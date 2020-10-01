<% if $Children %>
    <li class="{$LinkingMode} dropdown nav-item<% if $isCurrent || $isSection %> active<% end_if %>">
        <a class="nav-link dropdown-toggle" href="#" title="{$Title.XML}" role="button" id="MenuDropdown_{$ID}" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            {$MenuTitle.XML}
        </a>
        <div class="dropdown-menu border-0 shadow">
            <% loop $Children.Limit(10) %>
                <a class="dropdown-item" href="{$Link}" title="{$Title.XML}">
                    {$MenuTitle.XML}
                    <i class="fas fa-chevron-right text-muted"></i>
                </a>
                <div class="dropdown-divider"></div>
            <% end_loop %>
            <a class="dropdown-item" href="{$Link}" title="{$Title.XML}">
                See All
            </a>
        </div>
    </li>
<% else %>	
    <li class="$LinkingMode nav-item<% if $isCurrent || $isSection %> active<% end_if %>"><a class="nav-link" href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
<% end_if %>