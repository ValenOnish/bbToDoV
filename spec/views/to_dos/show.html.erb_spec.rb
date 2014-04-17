require 'spec_helper'

describe "to_dos/show" do
  before(:each) do
    @to_do = assign(:to_do, stub_model(ToDo,
      :title => "Title",
      :content => "Content",
      :completed => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Content/)
    rendered.should match(/false/)
  end
end
