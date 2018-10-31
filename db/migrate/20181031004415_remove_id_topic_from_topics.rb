class RemoveIdTopicFromTopics < ActiveRecord::Migration[5.1]
  def change
    remove_column :topics, :id_topic, :integer
  end
end
