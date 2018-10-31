class RemoveIdTopicFromDynamics < ActiveRecord::Migration[5.1]
  def change
    remove_column :dynamics, :id_topic, :integer
  end
end
