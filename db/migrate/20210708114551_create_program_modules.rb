class CreateProgramModules < ActiveRecord::Migration[6.1]
  def change
    create_table :program_modules do |t|
      t.string :name
      t.string :slug
      t.string :icon
      t.integer :position
      t.integer :parent_id

      t.timestamps
    end
  end
end
