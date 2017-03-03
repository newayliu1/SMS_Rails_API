# frozen_string_literal: true
class ChangePriceFormatInInventories < ActiveRecord::Migration[5.0]
  def change
    change_column :inventories, :price, :decimal, precision: 5, scale: 2
  end
end
