require 'spec_helper'

describe "rentals/show.html.erb" do
  before(:each) do
    @rental = assign(:rental, stub_model(Rental,
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
