class DropExamtopics < ActiveRecord::Migration[5.1]
  def change
  	drop_table :examtopics
  end
end
