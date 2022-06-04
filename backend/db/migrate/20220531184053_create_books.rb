class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :year
      t.boolean :read
      t.integer :library_id
      t.timestamps
    end
  end
end
