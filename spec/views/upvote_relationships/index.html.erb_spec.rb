require 'spec_helper'

describe "upvote_relationships/index" do
  before(:each) do
    assign(:upvote_relationships, [
      stub_model(UpvoteRelationship,
        :user_id => 1,
        :micropost_id => 2,
        :upvote_status => 3
      ),
      stub_model(UpvoteRelationship,
        :user_id => 1,
        :micropost_id => 2,
        :upvote_status => 3
      )
    ])
  end

  it "renders a list of upvote_relationships" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
