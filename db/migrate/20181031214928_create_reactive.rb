class CreateReactive < ActiveRecord::Migration[5.1]
  def change
    create_table :reactives do |t|
    	t.string :text
    	t.column :type, :integer, default: 0
    end
  end
end
