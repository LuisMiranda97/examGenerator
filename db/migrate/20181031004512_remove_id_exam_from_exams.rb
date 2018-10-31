class RemoveIdExamFromExams < ActiveRecord::Migration[5.1]
  def change
    remove_column :exams, :id_exam, :integer
  end
end
