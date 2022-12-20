class CreateCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :codes do |t|
      t.integer :rating
      t.string :problem_description

      t.timestamps
    end
  end
end
