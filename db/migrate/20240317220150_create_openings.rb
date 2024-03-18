class CreateOpenings < ActiveRecord::Migration[7.1]
  def change
    create_table :openings do |t|
      t.string :role
      t.string :company
      t.string :location
      t.boolean :remote
      t.string :link
      t.float :salary

      t.timestamps
    end
  end
end
