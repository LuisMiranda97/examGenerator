class AddFormulaToReactives < ActiveRecord::Migration[5.1]
  def change
    add_column :reactives, :formula, :string
  end
end
