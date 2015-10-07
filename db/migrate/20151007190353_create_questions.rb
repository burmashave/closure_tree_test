class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
			t.integer :parent_id
			t.integer :sort_order

      t.timestamps null: false
    end
  end
end
