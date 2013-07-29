require 'spec_helper'

describe "items/new" do
  before(:each) do
    assign(:item, stub_model(Item,
      :name => "MyString",
      :comment => "MyText",
      :done => false,
      :tags => "MyString",
      :item => nil
    ).as_new_record)
  end

  it "renders new item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", items_path, "post" do
      assert_select "input#item_name[name=?]", "item[name]"
      assert_select "textarea#item_comment[name=?]", "item[comment]"
      assert_select "input#item_done[name=?]", "item[done]"
      assert_select "input#item_tags[name=?]", "item[tags]"
      assert_select "input#item_item[name=?]", "item[item]"
    end
  end
end
