class AddTabIdToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :tab_id, :integer
  end
end
