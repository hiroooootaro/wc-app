class CreateTemplates < ActiveRecord::Migration[6.0]
  def change
    create_table :templates do |t|
      t.string :view_file,     null: false
      t.string :view_name,     null: false
      t.integer :view_type,    null: false
      t.integer :category,     null: false
      t.string :image,         null: false
      t.timestamps
    end
  end
end
