require 'spec_helper'

describe "items/index" do
  before(:each) do
    assign(:items, [
      stub_model(Item,
        :name => "Name",
        :comment => "MyText",
        :done => false,
        :tags => "Tags",
        :item => nil
      ),
      stub_model(Item,
        :name => "Name",
        :comment => "MyText",
        :done => false,
        :tags => "Tags",
        :item => nil
      )
    ])
  end

  it "renders a list of items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Tags".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
