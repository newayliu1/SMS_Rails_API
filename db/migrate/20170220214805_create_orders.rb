# frozen_string_literal: true
class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.data :expiration_date, null: false
      t.integer :amount, null: false
      t.data :order_date, null: false

      t.timestamps
    end
  end
end
