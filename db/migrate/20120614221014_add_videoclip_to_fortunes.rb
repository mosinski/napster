class AddVideoclipToFortunes < ActiveRecord::Migration
  def change
    add_column :fortunes, :videoclip, :string

  end
end
