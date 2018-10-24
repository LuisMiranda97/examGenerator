class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
    	t.integer :id_subject
    	t.string :name_subject

      t.timestamps
    end
  end
end
