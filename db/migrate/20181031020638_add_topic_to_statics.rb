class AddTopicToStatics < ActiveRecord::Migration[5.1]
  def change
    add_reference :statics, :topic, foreign_key: true
  end
end
