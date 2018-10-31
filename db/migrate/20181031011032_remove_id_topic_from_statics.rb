class RemoveIdTopicFromStatics < ActiveRecord::Migration[5.1]
  def change
    remove_column :statics, :id_topic, :integer
  end
end
