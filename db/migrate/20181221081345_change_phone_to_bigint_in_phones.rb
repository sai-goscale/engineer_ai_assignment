class ChangePhoneToBigintInPhones < ActiveRecord::Migration[5.2]
  def change
    change_column :phones, :number, :bigint
  end
end
