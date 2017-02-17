# frozen_string_literal: true
class CreateInventories < ActiveRecord::Migration[5.0]
  def change
    create_table :inventories do |t|
      t.integer :price, null: false
      t.string :section, null: false

      t.timestamps
    end
  end
end
