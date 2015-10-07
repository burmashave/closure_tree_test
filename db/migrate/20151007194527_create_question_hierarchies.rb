class CreateQuestionHierarchies < ActiveRecord::Migration
  def change
    create_table :question_hierarchies, id: false do |t|
      t.integer :ancestor_id, null: false
      t.integer :descendant_id, null: false
      t.integer :generations, null: false
    end

    add_index :question_hierarchies, [:ancestor_id, :descendant_id, :generations],
      unique: true,
      name: "question_anc_desc_idx"

    add_index :question_hierarchies, [:descendant_id],
      name: "question_desc_idx"
  end
end
