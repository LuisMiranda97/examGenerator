class AddSubjectToExam < ActiveRecord::Migration[5.1]
  def change
    add_reference :exams, :subject, foreign_key: true
  end
end
