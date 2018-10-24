class CreateVariables < ActiveRecord::Migration[5.1]
  def change
    create_table :variables do |t|
    	t.integer :id_variable
    	t.string :name_variable
    	t.decimal :minimum
    	t.decimal :maximum

      t.timestamps
    end
  end
end
