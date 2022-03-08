class CreateProjectAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :project_attributes do |t|
      t.string :title
      t.integer :datatype
      t.boolean :required

      t.timestamps
    end
  end
end
