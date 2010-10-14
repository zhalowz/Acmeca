require 'spec_helper'

describe "services/show.html.erb" do
  before(:each) do
    @service = assign(:service, stub_model(Service,
      :id => 1,
      :description => "Description",
      :header => "Header"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain(1.to_s)
    rendered.should contain("Description".to_s)
    rendered.should contain("Header".to_s)
  end
end
