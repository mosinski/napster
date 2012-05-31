class AddUserUsernameToFortunes < ActiveRecord::Migration
  def self.up
    change_table :fortunes do |t|
      t.string :user_username, :null => false, :options =>
      "CONSTRAINT fk_fortune_users REFERENCES users(username)", :default => "m1l05z"
    end
  end

  def self.down
    remove_column :fortunes, :user_username
  end
end
