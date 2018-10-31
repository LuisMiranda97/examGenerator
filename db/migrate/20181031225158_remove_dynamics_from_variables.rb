class RemoveDynamicsFromVariables < ActiveRecord::Migration[5.1]
  def change
    remove_reference :variables, :dynamic, foreign_key: true
    add_reference :variables, :reactive, index: true, foreign_key: true
  end
end
