require 'spec_helper'

describe "rentals/new.html.erb" do
  before(:each) do
    assign(:rental, stub_model(Rental,
      :new_record? => true,
      :name => "",
      :name => ""
    ))
  end

  it "renders new rental form" do
    render

    rendered.should have_selector("form", :action => rentals_path, :method => "post") do |form|
      form.should have_selector("input#rental_name", :name => "rental[name]")
      form.should have_selector("input#rental_name", :name => "rental[name]")
    end
  end
end
