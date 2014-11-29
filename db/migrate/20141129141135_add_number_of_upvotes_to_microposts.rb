class AddNumberOfUpvotesToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :number_of_upvotes, :integer
  end
end
