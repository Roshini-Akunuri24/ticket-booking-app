class Droplineitems < ActiveRecord::Migration[7.0]
  def change
    drop_table :carts 
    drop_table :line_items
  end
end
