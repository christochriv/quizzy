class CreateChallengeSteps < ActiveRecord::Migration
  def change
    create_table :challenge_steps do |t|
      t.references :challenge, index: true
      t.references :question, index: true
      t.references :answerer, index: true
      t.text :chosen_answer

      t.timestamps
    end
  end
end
