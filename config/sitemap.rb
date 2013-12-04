# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://landmhel.herokuapp.com"
# SitemapGenerator::Sitemap.adapter = SitemapGenerator::WaveAdapter.new
SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end

  add '/contact', changefreq: 'monthly'
  add '/listings', changefreq: 'weekly'
  add '/about', changefreq: 'monthly'
  add '/our_team', changefreq: 'monthly'
  add '/services', changefreq: 'monthly'

  Listing.find_each do |listing|
    add listing_details_path(listing), :lastmod => listing.updated_at
  end
end
