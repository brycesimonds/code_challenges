class AddFieldsToCodes < ActiveRecord::Migration[5.2]
  def change
    add_column :codes, :solution, :string
  end
end
