class RemoveIdFromDynamics < ActiveRecord::Migration[5.1]
  def change
  	remove_column :subjects, :id_subject, :integer
  end
end
