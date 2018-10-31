class RemoveIdStaticFromOptions < ActiveRecord::Migration[5.1]
  def change
    remove_column :options, :id_static, :integer
  end
end
