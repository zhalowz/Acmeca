require 'spec_helper'

describe "gcategories/index.html.erb" do
  before(:each) do
    assign(:gcategories, [
      stub_model(Gcategory,
        :name => "Name"
      ),
      stub_model(Gcategory,
        :name => "Name"
      )
    ])
  end

  it "renders a list of gcategories" do
    render
    rendered.should have_selector("tr>td", :content => "Name".to_s, :count => 2)
  end
end
