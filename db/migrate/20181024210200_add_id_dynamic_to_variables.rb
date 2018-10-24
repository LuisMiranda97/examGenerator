class AddIdDynamicToVariables < ActiveRecord::Migration[5.1]
  def change
    add_column :variables, :id_dynamic, :integer
  end
end
