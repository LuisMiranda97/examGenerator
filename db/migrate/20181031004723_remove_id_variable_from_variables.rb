class RemoveIdVariableFromVariables < ActiveRecord::Migration[5.1]
  def change
    remove_column :variables, :id_variable, :integer
  end
end
