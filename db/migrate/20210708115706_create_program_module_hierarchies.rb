class CreateProgramModuleHierarchies < ActiveRecord::Migration[6.1]
  def change
    create_table :program_module_hierarchies, id: false do |t|
      t.integer :ancestor_id, null: false
      t.integer :descendant_id, null: false
      t.integer :generations, null: false
    end

    add_index :program_module_hierarchies, [:ancestor_id, :descendant_id, :generations],
      unique: true,
      name: "program_module_anc_desc_idx"

    add_index :program_module_hierarchies, [:descendant_id],
      name: "program_module_desc_idx"
  end
end
