require 'spec_helper'

describe "lists/new" do
  before(:each) do
    assign(:list, stub_model(List,
      :name => "MyString",
      :comment => "MyText",
      :done => false,
      :tags => "MyString",
      :user => nil
    ).as_new_record)
  end

  it "renders new list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", lists_path, "post" do
      assert_select "input#list_name[name=?]", "list[name]"
      assert_select "textarea#list_comment[name=?]", "list[comment]"
      assert_select "input#list_done[name=?]", "list[done]"
      assert_select "input#list_tags[name=?]", "list[tags]"
      assert_select "input#list_user[name=?]", "list[user]"
    end
  end
end
