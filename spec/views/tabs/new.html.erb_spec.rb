require 'spec_helper'

describe "tabs/new" do
  before(:each) do
    assign(:tab, stub_model(Tab,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new tab form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tabs_path, :method => "post" do
      assert_select "input#tab_name", :name => "tab[name]"
    end
  end
end
