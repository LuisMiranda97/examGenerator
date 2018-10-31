class RemoveIdFromSubjects < ActiveRecord::Migration[5.1]
  def change
  	remove_column :dynamics, :id_dynamic, :integer
  end
end
