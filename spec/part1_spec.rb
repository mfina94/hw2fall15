require 'part1.rb'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
end

describe "#palindrome?" do
  it "should be defined" do
    lambda { palindrome?("Testing") }.should_not raise_error
    lambda { palindrome?("asdf !! fdsa") }.should_not raise_error
  end
end

describe "#count_words" do
  it "should be defined" do
    lambda { count_words("Testing") }.should_not raise_error
  end

  it "should return a Hash" do
    count_words("Testing").class.should == Hash
  end
end
