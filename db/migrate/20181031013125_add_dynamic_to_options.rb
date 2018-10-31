class AddDynamicToOptions < ActiveRecord::Migration[5.1]
  def change
    add_reference :options, :dynamic, foreign_key: true
  end
end
