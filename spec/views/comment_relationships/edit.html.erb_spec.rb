require 'spec_helper'

describe "comment_relationships/edit" do
  before(:each) do
    @comment_relationship = assign(:comment_relationship, stub_model(CommentRelationship,
      :micropost_id => 1,
      :user_id => 1
    ))
  end

  it "renders the edit comment_relationship form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => comment_relationships_path(@comment_relationship), :method => "post" do
      assert_select "input#comment_relationship_micropost_id", :name => "comment_relationship[micropost_id]"
      assert_select "input#comment_relationship_user_id", :name => "comment_relationship[user_id]"
    end
  end
end
