require 'spec_helper'

describe "installations/new.html.erb" do
  before(:each) do
    assign(:installation, stub_model(Installation,
      :new_record? => true,
      :name => "MyString"
    ))
  end

  it "renders new installation form" do
    render

    rendered.should have_selector("form", :action => installations_path, :method => "post") do |form|
      form.should have_selector("input#installation_name", :name => "installation[name]")
    end
  end
end
