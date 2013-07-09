class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :name
      t.string :numbers
      t.integer :dependency_id
      t.string :comments

      t.timestamps
    end
  end
end
