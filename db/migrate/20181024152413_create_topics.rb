class CreateTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :topics do |t|
    	t.integer :id_topic
    	t.integer :id_subject
    	t.string :name_topic

      t.timestamps
    end
  end
end
