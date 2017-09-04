class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.integer :question_id, null: false
      t.string :name, null: false
      t.string :email, null: false
      t.text :body, null: false

      t.timestamps null: false
    end
  end
end
