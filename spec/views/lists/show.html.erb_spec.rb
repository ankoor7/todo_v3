require 'spec_helper'

describe "lists/show" do
  before(:each) do
    @list = assign(:list, stub_model(List,
      :name => "Name",
      :comment => "MyText",
      :done => false,
      :tags => "Tags",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
    rendered.should match(/Tags/)
    rendered.should match(//)
  end
end
