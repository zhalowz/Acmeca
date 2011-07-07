require 'spec_helper'

describe "gcategories/edit.html.erb" do
  before(:each) do
    @gcategory = assign(:gcategory, stub_model(Gcategory,
      :new_record? => false,
      :name => "MyString"
    ))
  end

  it "renders the edit gcategory form" do
    render

    rendered.should have_selector("form", :action => gcategory_path(@gcategory), :method => "post") do |form|
      form.should have_selector("input#gcategory_name", :name => "gcategory[name]")
    end
  end
end
