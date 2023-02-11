class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :pages
      t.string :publisher
      t.string :year
      t.references :author, null: false, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
