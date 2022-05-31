class CreateLibraries < ActiveRecord::Migration[6.1]
  def change
    create_table :libraries do |t|
      t.string :genre
      t.integer :quantity
      t.timestamps
    end
  end
end
