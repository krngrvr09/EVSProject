require 'spec_helper'

describe "tabs/show" do
  before(:each) do
    @tab = assign(:tab, stub_model(Tab,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
