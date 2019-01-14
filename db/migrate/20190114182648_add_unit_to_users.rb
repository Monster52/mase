class AddUnitToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :unit, foreign_key: true
  end
end
