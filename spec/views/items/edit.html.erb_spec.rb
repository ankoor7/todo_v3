require 'spec_helper'

describe "items/edit" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :name => "MyString",
      :comment => "MyText",
      :done => false,
      :tags => "MyString",
      :item => nil
    ))
  end

  it "renders the edit item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", item_path(@item), "post" do
      assert_select "input#item_name[name=?]", "item[name]"
      assert_select "textarea#item_comment[name=?]", "item[comment]"
      assert_select "input#item_done[name=?]", "item[done]"
      assert_select "input#item_tags[name=?]", "item[tags]"
      assert_select "input#item_item[name=?]", "item[item]"
    end
  end
end
