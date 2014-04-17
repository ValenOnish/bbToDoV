require 'spec_helper'

describe "to_dos/index" do
  before(:each) do
    assign(:to_dos, [
      stub_model(ToDo,
        :title => "Title",
        :content => "Content",
        :completed => false
      ),
      stub_model(ToDo,
        :title => "Title",
        :content => "Content",
        :completed => false
      )
    ])
  end

  it "renders a list of to_dos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
