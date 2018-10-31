class CreateExamTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :exam_topics do |t|
    	t.belongs_to :exam, index: true
    	t.belongs_to :topic, index: true
    	t.timestamps
    end
  end
end
