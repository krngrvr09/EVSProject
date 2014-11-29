require 'spec_helper'

describe "comment_relationships/index" do
  before(:each) do
    assign(:comment_relationships, [
      stub_model(CommentRelationship,
        :micropost_id => 1,
        :user_id => 2
      ),
      stub_model(CommentRelationship,
        :micropost_id => 1,
        :user_id => 2
      )
    ])
  end

  it "renders a list of comment_relationships" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
