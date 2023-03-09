class RemoveForeignKey < ActiveRecord::Migration[7.0]
  def change
    remove_index :line_items, name: "index_line_items_on_cart_id"
  end
end
