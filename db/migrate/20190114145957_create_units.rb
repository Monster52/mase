class CreateUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :units do |t|
      t.string :unit_name
      t.integer :members
      t.string :owner
      t.boolean :private 
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
