require 'spec_helper'

describe "to_dos/edit" do
  before(:each) do
    @to_do = assign(:to_do, stub_model(ToDo,
      :title => "MyString",
      :content => "MyString",
      :completed => false
    ))
  end

  it "renders the edit to_do form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", to_do_path(@to_do), "post" do
      assert_select "input#to_do_title[name=?]", "to_do[title]"
      assert_select "input#to_do_content[name=?]", "to_do[content]"
      assert_select "input#to_do_completed[name=?]", "to_do[completed]"
    end
  end
end
