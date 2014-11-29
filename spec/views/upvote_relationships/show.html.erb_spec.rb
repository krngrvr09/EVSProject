require 'spec_helper'

describe "upvote_relationships/show" do
  before(:each) do
    @upvote_relationship = assign(:upvote_relationship, stub_model(UpvoteRelationship,
      :user_id => 1,
      :micropost_id => 2,
      :upvote_status => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
