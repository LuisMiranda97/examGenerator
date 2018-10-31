class RemoveIdDynamicFromVariables < ActiveRecord::Migration[5.1]
  def change
    remove_column :variables, :id_dynamic, :integer
  end
end
