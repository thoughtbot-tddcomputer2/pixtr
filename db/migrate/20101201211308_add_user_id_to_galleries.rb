class AddUserIdToGalleries < ActiveRecord::Migration
  def self.up
    add_column :galleries, :user_id, :integer
  end

  def self.down
    remove_column :galleries, :user_id
  end
end
