class CreateDependencies < ActiveRecord::Migration
  def change
    create_table :dependencies do |t|
      t.string :name

      t.timestamps
    end
  end
end
