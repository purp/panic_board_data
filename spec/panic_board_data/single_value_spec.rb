require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PanicBoardData::SingleValue do

  let(:single_value) { PanicBoardData::SingleValue.new heading, value }

  [:heading, :value, :length].to_objects {[
    ['the heading', 'the value', 1727],
    ['one',         'two',       1713]
  ]}.each do |test|

    describe "to_html" do
      let(:heading) { test.heading }
      let(:value)   { test.value   }

      it "should return a bunch of html" do
        result = single_value.to_html
        result.length.should eq(test.length)
        result.include?(test.heading).should eq(true)
        result.include?(test.value).should eq(true)
      end

    end

  end

end
