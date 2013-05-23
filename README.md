# ZazzleRails

A gem geared towards parsing the Zazzle RSS feeds for a given store. 
 
Ideally this will use their api instead of their RSS when they enable that kind of functionality.

[![Gem Version](https://badge.fury.io/rb/zazzle_rails.png)](http://badge.fury.io/rb/zazzle_rails) [![Build Status](https://travis-ci.org/nrodriguez/zazzle_rails.png?branch=master)](https://travis-ci.org/nrodriguez/zazzle_rails)

## Installation

Add this line to your application's Gemfile:

    gem 'zazzle_rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install zazzle_rails

## Usage

To use it, simply install and then you can get back your list of products using

    ZazzleRails.get_products("YOUR STORE HERE")

This will return a hash of products from that store in the format of:

    {:items=>
      [
        {
             :guid=>"256512229341746841",
             :pubDate=>"Wed, 30 Jan 2013 06:10:16 GMT",
             :title=>"justNeph Messenger Bag",
             :link=>
              "http://www.zazzle.com/justneph_messenger_bag_computer_bag-256512229341746841",
             :author=>"justNeph",
             :description=>
              "Got stuff to carry. Got drugs to move. Got a copy of 50 Shades you're embarassed to carry. Get the justNeph Messenger Bag! It's comfortable, spacious and lets people kn
             :price=>"$169.95",
             :thumbnail=>
              "http://rlv.zcache.com/justneph_messenger_bag_computer_bag-r53e6c2d36ac64d40aa15b71a7175d704_vxzzv_8byvr_152.jpg",
             :content=>
              "http://rlv.zcache.com/justneph_messenger_bag_computer_bag-r53e6c2d36ac64d40aa15b71a7175d704_vxzzv_8byvr_500.jpg",
             :keywords=>"justneph, bag, messenger-bag, youtube",
             :rating=>"g"
         }
        ]
      }

With the attributes for each product being

- GUID
- Published Date
- Title
- Link
- Author
- Description
- Price
- Thumbnail (product image)
- Content (Full size product image)
- Keywords
- Rating


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
