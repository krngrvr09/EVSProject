require 'spec_helper'

describe "upvote_relationships/edit" do
  before(:each) do
    @upvote_relationship = assign(:upvote_relationship, stub_model(UpvoteRelationship,
      :user_id => 1,
      :micropost_id => 1,
      :upvote_status => 1
    ))
  end

  it "renders the edit upvote_relationship form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => upvote_relationships_path(@upvote_relationship), :method => "post" do
      assert_select "input#upvote_relationship_user_id", :name => "upvote_relationship[user_id]"
      assert_select "input#upvote_relationship_micropost_id", :name => "upvote_relationship[micropost_id]"
      assert_select "input#upvote_relationship_upvote_status", :name => "upvote_relationship[upvote_status]"
    end
  end
end
