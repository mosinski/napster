class AddCheckboxprofilToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :checkboxgot, :integer, :default => 0
  end

  def self.down
    remove_column :users, :checkboxgot
  end
end
