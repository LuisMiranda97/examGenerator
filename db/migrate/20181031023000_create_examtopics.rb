class CreateExamtopics < ActiveRecord::Migration[5.1]
  def change
    create_table :examtopics do |t|

      t.timestamps
    end
  end
end
