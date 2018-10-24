class CreateDynamics < ActiveRecord::Migration[5.1]
  def change
    create_table :dynamics do |t|
    	t.integer :id_dynamic
    	t.integer :id_topic
    	t.string :text
    	t.integer :id_variable
    	t.integer :id_option
    	t.string :formula

      t.timestamps
    end
  end
end
