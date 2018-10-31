class AddDynamicToVariables < ActiveRecord::Migration[5.1]
  def change
    add_reference :variables, :dynamic, foreign_key: true
  end
end
