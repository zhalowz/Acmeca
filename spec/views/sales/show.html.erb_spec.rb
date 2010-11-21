require 'spec_helper'

describe "sales/show.html.erb" do
  before(:each) do
    @sale = assign(:sale, stub_model(Sale,
      :name => "",
      :name => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("".to_s)
    rendered.should contain("".to_s)
  end
end
