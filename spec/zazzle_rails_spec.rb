require 'spec_helper'
describe ZazzleRails do
  describe "When hitting the zazzle rss" do
    context "#get_products" do
      it "gets back a parsed hash of products" do    
        ZazzleRails.get_products("justNeph").should_not be_empty
      end
    end
  end
end