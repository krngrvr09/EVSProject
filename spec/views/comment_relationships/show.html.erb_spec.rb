require 'spec_helper'

describe "comment_relationships/show" do
  before(:each) do
    @comment_relationship = assign(:comment_relationship, stub_model(CommentRelationship,
      :micropost_id => 1,
      :user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
