class CreateExams < ActiveRecord::Migration[5.1]
  def change
    create_table :exams do |t|
    	t.integer :id_exam
    	t.integer :id_subject
    	t.string :name_exam

      t.timestamps
    end
  end
end
