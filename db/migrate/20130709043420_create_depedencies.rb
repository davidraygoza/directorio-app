class CreateDepedencies < ActiveRecord::Migration
  def change
    create_table :depedencies do |t|
      t.string :name

      t.timestamps
    end
  end
end
