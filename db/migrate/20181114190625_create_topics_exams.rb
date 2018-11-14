class CreateTopicsExams < ActiveRecord::Migration[5.1]
  def change
    create_table :topics_exams do |t|
      t.references :exam, foreign_key: true
      t.references :topic, foreign_key: true
      t.integer :num_of_reactives
      t.integer :score

      t.timestamps
    end
  end
end
