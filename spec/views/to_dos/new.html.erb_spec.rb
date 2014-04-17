require 'spec_helper'

describe "to_dos/new" do
  before(:each) do
    assign(:to_do, stub_model(ToDo,
      :title => "MyString",
      :content => "MyString",
      :completed => false
    ).as_new_record)
  end

  it "renders new to_do form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", to_dos_path, "post" do
      assert_select "input#to_do_title[name=?]", "to_do[title]"
      assert_select "input#to_do_content[name=?]", "to_do[content]"
      assert_select "input#to_do_completed[name=?]", "to_do[completed]"
    end
  end
end
