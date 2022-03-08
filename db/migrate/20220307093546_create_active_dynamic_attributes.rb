class CreateActiveDynamicAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :active_dynamic_attributes do |t|
      t.integer :customizable_id
      t.string :customizable_type
      t.string :display_title
      t.string :title
      t.text :value
      t.integer :datatype
      t.boolean :required

      t.timestamps
    end
    add_index :active_dynamic_attributes, :customizable_id
    add_index :active_dynamic_attributes, :customizable_type
  end
end
