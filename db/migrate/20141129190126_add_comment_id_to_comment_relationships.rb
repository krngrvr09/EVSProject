class AddCommentIdToCommentRelationships < ActiveRecord::Migration
  def change
    add_column :comment_relationships, :comment_id, :integer
  end
end
