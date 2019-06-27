class CreateVessels < ActiveRecord::Migration[5.2]
  def change
    create_table :vessels do |t|
      t.text :vessel_id
      t.text :name
      t.text :operator
      t.boolean :active
      t.date :splash_date

      t.timestamps
    end
    add_index :vessels, :vessel_id, unique: true
  end
end
