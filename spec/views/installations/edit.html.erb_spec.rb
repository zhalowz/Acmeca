require 'spec_helper'

describe "installations/edit.html.erb" do
  before(:each) do
    @installation = assign(:installation, stub_model(Installation,
      :new_record? => false,
      :name => "MyString"
    ))
  end

  it "renders the edit installation form" do
    render

    rendered.should have_selector("form", :action => installation_path(@installation), :method => "post") do |form|
      form.should have_selector("input#installation_name", :name => "installation[name]")
    end
  end
end
