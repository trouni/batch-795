require 'open-uri'
require 'nokogiri'

def search_etsy(keyword)
  # 1. We get the HTML page content thanks to open-uri
  html_content = URI.open("https://www.etsy.com/search?q=#{keyword}").read
  # 2. We build a Nokogiri document from this file
  doc = Nokogiri::HTML(html_content)

  # 3. We search for the correct elements containing the items' title in our HTML doc
  doc.search('.v2-listing-card .v2-listing-card__info .v2-listing-card__title').first(5).map do |element|
    # 4. For each item found, we extract its title and print it
    element.text.strip.split.first(5).join(' ')
  end
end
