require 'spec_helper'

describe "rentals/index.html.erb" do
  before(:each) do
    assign(:rentals, [
      stub_model(Rental,
        :name => "",
        :name => ""
      ),
      stub_model(Rental,
        :name => "",
        :name => ""
      )
    ])
  end

  it "renders a list of rentals" do
    render
    rendered.should have_selector("tr>td", :content => "".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "".to_s, :count => 2)
  end
end
