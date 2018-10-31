class RemoveIdVariableFromDynamics < ActiveRecord::Migration[5.1]
  def change
    remove_column :dynamics, :id_variable, :integer
  end
end
