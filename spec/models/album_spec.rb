require File.dirname(__FILE__) + '/../spec_helper'

describe Album do
  it "should be valid" do
    Album.new.should be_valid
  end
end
