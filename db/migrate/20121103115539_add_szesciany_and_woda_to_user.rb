class AddSzescianyAndWodaToUser < ActiveRecord::Migration
  def change
    add_column :users, :szesciany, :string, :default => "0"

    add_column :users, :woda, :string, :default => "0"

  end
end
