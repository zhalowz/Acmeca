require 'spec_helper'

describe "services/new.html.erb" do
  before(:each) do
    assign(:service, stub_model(Service,
      :new_record? => true,
      :id => 1,
      :description => "MyString",
      :header => "MyString"
    ))
  end

  it "renders new service form" do
    render

    rendered.should have_selector("form", :action => services_path, :method => "post") do |form|
      form.should have_selector("input#service_id", :name => "service[id]")
      form.should have_selector("input#service_description", :name => "service[description]")
      form.should have_selector("input#service_header", :name => "service[header]")
    end
  end
end
