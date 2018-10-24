class DropMateria < ActiveRecord::Migration[5.1]
  def change
  	drop_table :materia
  end
end
