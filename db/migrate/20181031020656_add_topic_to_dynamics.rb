class AddTopicToDynamics < ActiveRecord::Migration[5.1]
  def change
    add_reference :dynamics, :topic, foreign_key: true
  end
end
