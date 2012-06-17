class AddCoverToFortunes < ActiveRecord::Migration
  def change
    add_column :fortunes, :cover, :string

  end
end
