require 'spec_helper'

describe "sales/edit.html.erb" do
  before(:each) do
    @sale = assign(:sale, stub_model(Sale,
      :new_record? => false,
      :name => "",
      :name => ""
    ))
  end

  it "renders the edit sale form" do
    render

    rendered.should have_selector("form", :action => sale_path(@sale), :method => "post") do |form|
      form.should have_selector("input#sale_name", :name => "sale[name]")
      form.should have_selector("input#sale_name", :name => "sale[name]")
    end
  end
end
