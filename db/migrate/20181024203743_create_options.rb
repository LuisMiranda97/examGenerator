class CreateOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :options do |t|
    	t.integer :id_option
    	t.integer :id_static
    	t.boolean :isAnswer
    	t.string :answer
    	t.integer :id_dynamic

      t.timestamps
    end
  end
end
