require "zazzle_rails/version"
require 'nokogiri'
require 'open-uri'
require "cgi"
module ZazzleRails
  def self.get_products(store_name)
    products = {:items => {}}
    zazzle_feed = Nokogiri::XML(open("http://feed.zazzle.com/#{store_name}/feed")) do |config|
      config.noblanks
    end
    zazzle_feed.xpath("//channel").xpath("//item").each_with_index do |item, index|
      item_attributes = {}
      item.children.each do |item_attr|
        attr_to_add = ""
        case item_attr.name
        when "content", "thumbnail"
          attr_to_add = item_attr.attributes["url"].text
        when "guid"
          attr_to_add = item_attr.text.match(/http:\/\/www.zazzle.com\/\D+-(\d+)/).captures.first
        else
          attr_to_add = CGI.unescape_html(item_attr.text)
        end
        item_attributes.merge!({"#{item_attr.name}".to_sym => attr_to_add})
      end
      products[:items].merge!({"item_#{index}".to_sym => item_attributes})
    end
    products
  end
end
