class AddAvatarzurlToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :avatarurl, :string
  end

  def self.down
    remove_column :users, :avatarurl
  end
end
