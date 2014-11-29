class CreateUpvoteRelationships < ActiveRecord::Migration
  def change
    create_table :upvote_relationships do |t|
      t.integer :user_id
      t.integer :micropost_id
      t.integer :upvote_status

      t.timestamps
    end
  end
end
