class CreateCommentRelationships < ActiveRecord::Migration
  def change
    create_table :comment_relationships do |t|
      t.integer :micropost_id
      t.integer :user_id

      t.timestamps
    end
  end
end
