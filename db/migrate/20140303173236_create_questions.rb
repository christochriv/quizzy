class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :query
      t.text :explication
      t.text :source_url
      t.integer :difficulty
      t.string :category
      t.integer :week

      t.timestamps
    end

    create_table :answers_sets do |t|
      t.references :question
      t.string :answer1
      t.string :answer2
      t.string :answer3
      t.string :good_answer

      t.timestamps
    end
  end
end
