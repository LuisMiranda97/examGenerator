class AddSubjectToTopics < ActiveRecord::Migration[5.1]
  def change
    add_reference :topics, :subject, foreign_key: true
  end
end
