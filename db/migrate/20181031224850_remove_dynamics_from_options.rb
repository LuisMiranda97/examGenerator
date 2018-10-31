class RemoveDynamicsFromOptions < ActiveRecord::Migration[5.1]
  def change
    remove_reference :options, :dynamic, foreign_key: true
    remove_reference :options, :static, foreign_key: true
    add_reference :options, :reactive, index: true, foreign_key: true
  end
end
