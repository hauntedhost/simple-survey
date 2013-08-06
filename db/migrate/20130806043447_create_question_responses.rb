class CreateQuestionResponses < ActiveRecord::Migration
  def change
    create_table :question_responses do |t|
      t.integer :user_id
      t.integer :question_id
      t.string :response

      t.timestamps
    end
  end
end
