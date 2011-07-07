require 'spec_helper'

describe "gcategories/show.html.erb" do
  before(:each) do
    @gcategory = assign(:gcategory, stub_model(Gcategory,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Name".to_s)
  end
end
