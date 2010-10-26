require 'spec_helper'

describe "installations/index.html.erb" do
  before(:each) do
    assign(:installations, [
      stub_model(Installation,
        :name => "Name"
      ),
      stub_model(Installation,
        :name => "Name"
      )
    ])
  end

  it "renders a list of installations" do
    render
    rendered.should have_selector("tr>td", :content => "Name".to_s, :count => 2)
  end
end
