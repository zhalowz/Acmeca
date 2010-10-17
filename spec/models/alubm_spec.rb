require File.dirname(__FILE__) + '/../spec_helper'

describe Alubm do
  it "should be valid" do
    Alubm.new.should be_valid
  end
end
