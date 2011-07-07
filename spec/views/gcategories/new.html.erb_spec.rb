require 'spec_helper'

describe "gcategories/new.html.erb" do
  before(:each) do
    assign(:gcategory, stub_model(Gcategory,
      :new_record? => true,
      :name => "MyString"
    ))
  end

  it "renders new gcategory form" do
    render

    rendered.should have_selector("form", :action => gcategories_path, :method => "post") do |form|
      form.should have_selector("input#gcategory_name", :name => "gcategory[name]")
    end
  end
end
