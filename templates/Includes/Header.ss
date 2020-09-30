<header<% if $FeaturedImage || $MapEmbed %> class="sticky-top position-absolute"<% end_if %> role="banner">
	<div class="container">
		<div class="row align-items-center">
			<div class="col-7 col-sm-6 col-md-4 col-lg-auto">
				<p class="h1">				
					<a href="$BaseHref" class="brand" rel="home">
						<% if $SiteConfig.Logo %>
							$SiteConfig.Logo.ScaleHeight(80)
						<% else %>
							$SiteConfig.Title
						<% end_if %>
					</a>
				</p>
				<% if not $SiteConfig.Logo && $SiteConfig.Tagline %>
					<p class="d-none d-sm-block">
						<a href="$BaseHref" class="brand" rel="home">
							$SiteConfig.Tagline
						</a>
					</p>
				<% end_if %>
			</div>
			<div class="navbar navbar-expand-lg navbar-light col-5 col-sm-6 col-md-8 d-lg-none py-0">
				<button class="navbar-toggler mx-auto my-1 ml-sm-auto mr-sm-2" type="button" data-toggle="collapse" data-target="#MainNav" aria-controls="MainNav" aria-expanded="false" aria-label="Toggle navigation">
					<i class="fas fa-bars"></i>
				</button>
				<% if $SearchForm %>
					<button class="navbar-toggler my-1 mx-auto mx-sm-2" type="button" data-toggle="collapse" data-target="#SearchBar" aria-controls="SearchBar" aria-expanded="false" aria-label="Toggle search">
						<i class="fas fa-search"></i>
					</button>
				<% end_if %>
			</div>
			<div class="col-lg <% if $SearchForm %>searchform-enabled<% end_if %>">
				<% include Navigation %>
			</div>
		</div>
	</div>
</header>
