require 'spec_helper'

describe "tabs/edit" do
  before(:each) do
    @tab = assign(:tab, stub_model(Tab,
      :name => "MyString"
    ))
  end

  it "renders the edit tab form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tabs_path(@tab), :method => "post" do
      assert_select "input#tab_name", :name => "tab[name]"
    end
  end
end
