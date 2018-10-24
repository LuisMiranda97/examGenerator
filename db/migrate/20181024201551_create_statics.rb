class CreateStatics < ActiveRecord::Migration[5.1]
  def change
    create_table :statics do |t|
    	t.integer :id_static
    	t.integer :id_topic
    	t.string :text
    	t.integer :id_option

      t.timestamps
    end
  end
end
