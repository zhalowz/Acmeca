require 'spec_helper'

describe "services/index.html.erb" do
  before(:each) do
    assign(:services, [
      stub_model(Service,
        :id => 1,
        :description => "Description",
        :header => "Header"
      ),
      stub_model(Service,
        :id => 1,
        :description => "Description",
        :header => "Header"
      )
    ])
  end

  it "renders a list of services" do
    render
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Description".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Header".to_s, :count => 2)
  end
end
