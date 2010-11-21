require 'spec_helper'

describe "sales/index.html.erb" do
  before(:each) do
    assign(:sales, [
      stub_model(Sale,
        :name => "",
        :name => ""
      ),
      stub_model(Sale,
        :name => "",
        :name => ""
      )
    ])
  end

  it "renders a list of sales" do
    render
    rendered.should have_selector("tr>td", :content => "".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "".to_s, :count => 2)
  end
end
