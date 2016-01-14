class RemoveFollowingIdFromRelationships < ActiveRecord::Migration
  def change
  	remove_column :relationships, :followed_id
  	add_column :relationships, :user_id, :integer
  end
end
