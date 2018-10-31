class RemoveIdDynamicFromOptions < ActiveRecord::Migration[5.1]
  def change
    remove_column :options, :id_dynamic, :integer
  end
end
