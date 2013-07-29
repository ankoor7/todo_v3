class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :comment
      t.boolean :done, null: false, default: false
      t.string :tags
      t.references :list, null: false

      t.timestamps
    end
    add_index :items, :list_id
  end
end
