class RenameColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :reactives, :type, :reactive_type
  end
end
