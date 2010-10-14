require 'spec_helper'

describe "services/edit.html.erb" do
  before(:each) do
    @service = assign(:service, stub_model(Service,
      :new_record? => false,
      :id => 1,
      :description => "MyString",
      :header => "MyString"
    ))
  end

  it "renders the edit service form" do
    render

    rendered.should have_selector("form", :action => service_path(@service), :method => "post") do |form|
      form.should have_selector("input#service_id", :name => "service[id]")
      form.should have_selector("input#service_description", :name => "service[description]")
      form.should have_selector("input#service_header", :name => "service[header]")
    end
  end
end
