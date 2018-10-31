class AddStaticToOptions < ActiveRecord::Migration[5.1]
  def change
    add_reference :options, :static, foreign_key: true
  end
end
