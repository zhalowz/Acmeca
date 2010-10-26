require 'spec_helper'

describe "installations/show.html.erb" do
  before(:each) do
    @installation = assign(:installation, stub_model(Installation,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Name".to_s)
  end
end
