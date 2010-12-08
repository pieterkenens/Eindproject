class DoNothing < ActiveRecord::Migration
  def self.up
  end

  def self.down
  end
end

create_table :users do |t|
t.string "first_name", :limit => 25
t.string "last_name", :limit => 50
t.string “email”, :default => “”, :null => false
t.string “password”, :limit => 40
t.timestamps
end