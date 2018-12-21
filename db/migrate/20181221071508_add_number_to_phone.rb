class AddNumberToPhone < ActiveRecord::Migration[5.2]
  def change
    add_column :phones, :number, :integer, :unique => true
  end
end
