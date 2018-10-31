class AddTopicToReactive < ActiveRecord::Migration[5.1]
  def change
  	add_reference :reactives, :topic, foreign_key: true
  end
end
