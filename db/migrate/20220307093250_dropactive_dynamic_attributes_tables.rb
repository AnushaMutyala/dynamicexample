class DropactiveDynamicAttributesTables < ActiveRecord::Migration[5.2]
  def change
   drop_table :active_dynamic_attributes_tables
  end
end
