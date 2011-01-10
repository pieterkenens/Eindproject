class CreateAanwezigs < ActiveRecord::Migration
  def self.up
    create_table :aanwezigs do |t|
      t.string :vak
      t.string :docent
      t.integer :studentnumber
      t.string :first_name
      t.string :last_name
      t.string :klas
      t.date :datum

      t.timestamps
    end
  end

  def self.down
    drop_table :aanwezigs
  end
end
