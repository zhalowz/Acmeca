require 'spec_helper'

describe "sales/new.html.erb" do
  before(:each) do
    assign(:sale, stub_model(Sale,
      :new_record? => true,
      :name => "",
      :name => ""
    ))
  end

  it "renders new sale form" do
    render

    rendered.should have_selector("form", :action => sales_path, :method => "post") do |form|
      form.should have_selector("input#sale_name", :name => "sale[name]")
      form.should have_selector("input#sale_name", :name => "sale[name]")
    end
  end
end
