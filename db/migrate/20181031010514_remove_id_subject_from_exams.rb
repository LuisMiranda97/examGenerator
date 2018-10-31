class RemoveIdSubjectFromExams < ActiveRecord::Migration[5.1]
  def change
    remove_column :exams, :id_subject, :integer
  end
end
