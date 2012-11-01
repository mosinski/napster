class AddPtakiAndKolkaAndSamochodToUser < ActiveRecord::Migration
  def change
    add_column :users, :ptaki, :string, :default => "0"

    add_column :users, :kolka, :string, :default => "0"

    add_column :users, :samochod, :string, :default => "0"

  end
end
