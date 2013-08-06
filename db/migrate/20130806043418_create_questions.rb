class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :survey_id
      t.string :label
      t.integer :position

      t.timestamps
    end
  end
end
