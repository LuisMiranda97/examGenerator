class DropMateria < ActiveRecord::Migration[5.1]
  def change
  	drop_table :temas
  end
end
