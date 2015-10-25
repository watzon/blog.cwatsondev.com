class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.string :slug, null: false
      t.text :description, default: ''

      t.timestamps null: false
      t.index :slug, unique: true
    end
  end
end
