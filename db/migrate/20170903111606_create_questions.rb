class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.text :body, null: false
      t.integer :user_id, null: false
      t.timestamps null: false
    end
  end
end
