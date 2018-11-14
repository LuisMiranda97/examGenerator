class AddExamIdToTopics < ActiveRecord::Migration[5.1]
  def change
    add_column :topics, :exam_id, :integer
  end
end
