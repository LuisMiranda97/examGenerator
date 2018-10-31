class RemoveIdSubjectFromTopics < ActiveRecord::Migration[5.1]
  def change
    remove_column :topics, :id_subject, :integer
  end
end
