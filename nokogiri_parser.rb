require 'rubygems'
require 'nokogiri'
require 'open-uri'

PAGE_URL = "http://ruby.bastardsbook.com/files/hello-webpage.html"
page = Nokogiri::HTML(open(PAGE_URL))
links = page.css('a')
divs = page.css('div')
# links.each { |t| puts t['href'] }
puts divs.css('#references p a')

# require 'restclient'
# page = RestClient.get("http://en.wikipedia.org/")
# puts page
