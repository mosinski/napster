class AddKodDostepuToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :kod_dostepu, :string
  end
 
  def self.down
    remove_column :users, :kod_dostepu
  end
end
