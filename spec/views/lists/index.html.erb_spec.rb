require 'spec_helper'

describe "lists/index" do
  before(:each) do
    assign(:lists, [
      stub_model(List,
        :name => "Name",
        :comment => "MyText",
        :done => false,
        :tags => "Tags",
        :user => nil
      ),
      stub_model(List,
        :name => "Name",
        :comment => "MyText",
        :done => false,
        :tags => "Tags",
        :user => nil
      )
    ])
  end

  it "renders a list of lists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Tags".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
