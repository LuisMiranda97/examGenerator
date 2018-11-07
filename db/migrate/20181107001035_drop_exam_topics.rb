class DropExamTopics < ActiveRecord::Migration[5.1]
  def change
  	drop_table :exam_topics
  end
end
