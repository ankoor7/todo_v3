require 'spec_helper'

describe "lists/edit" do
  before(:each) do
    @list = assign(:list, stub_model(List,
      :name => "MyString",
      :comment => "MyText",
      :done => false,
      :tags => "MyString",
      :user => nil
    ))
  end

  it "renders the edit list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", list_path(@list), "post" do
      assert_select "input#list_name[name=?]", "list[name]"
      assert_select "textarea#list_comment[name=?]", "list[comment]"
      assert_select "input#list_done[name=?]", "list[done]"
      assert_select "input#list_tags[name=?]", "list[tags]"
      assert_select "input#list_user[name=?]", "list[user]"
    end
  end
end
