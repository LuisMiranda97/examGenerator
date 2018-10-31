class RemoveIdOptionFromStatics < ActiveRecord::Migration[5.1]
  def change
    remove_column :statics, :id_option, :integer
  end
end
