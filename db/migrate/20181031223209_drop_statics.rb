class DropStatics < ActiveRecord::Migration[5.1]
  def change
  	drop_table :statics
  end
end
