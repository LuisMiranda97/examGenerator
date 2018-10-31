class RemoveIdOptionFromDynamics < ActiveRecord::Migration[5.1]
  def change
    remove_column :dynamics, :id_option, :integer
  end
end
