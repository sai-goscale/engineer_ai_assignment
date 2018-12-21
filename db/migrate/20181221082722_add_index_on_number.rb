class AddIndexOnNumber < ActiveRecord::Migration[5.2]
  def change
    add_index :phones, :number, unique: true
  end
end
