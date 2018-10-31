class RemoveIdStaticFromStatics < ActiveRecord::Migration[5.1]
  def change
    remove_column :statics, :id_static, :integer
  end
end
