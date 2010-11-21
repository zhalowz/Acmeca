require 'spec_helper'

describe "rentals/edit.html.erb" do
  before(:each) do
    @rental = assign(:rental, stub_model(Rental,
      :new_record? => false,
      :name => "",
      :name => ""
    ))
  end

  it "renders the edit rental form" do
    render

    rendered.should have_selector("form", :action => rental_path(@rental), :method => "post") do |form|
      form.should have_selector("input#rental_name", :name => "rental[name]")
      form.should have_selector("input#rental_name", :name => "rental[name]")
    end
  end
end
