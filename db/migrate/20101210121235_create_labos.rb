class CreateLabos < ActiveRecord::Migration
  def self.up
    create_table :labos do |t|
      t.string :naam
      t.string :lokaal

      t.timestamps
    end
  end

  def self.down
    drop_table :labos
  end
end
