class CreateSkinnies < ActiveRecord::Migration[5.2]
  def change
    create_table :skinnies do |t|
      t.text :skinny_id
      t.text :thought
      t.integer :vessel_id
      t.boolean :active

      t.timestamps
    end
    add_index :skinnies, :skinny_id, unique: true
  end
end
