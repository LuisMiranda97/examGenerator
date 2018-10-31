class RemoveIdOptionFromOptions < ActiveRecord::Migration[5.1]
  def change
    remove_column :options, :id_option, :integer
  end
end
