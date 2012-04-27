class CreateFortunes < ActiveRecord::Migration
  def change
    create_table :fortunes do |t|
      t.string :wykonawca
      t.string :tytul
      t.string :album
      t.text :tekst

      t.timestamps
    end
  end
end
