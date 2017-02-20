# frozen_string_literal: true
class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true, null: false, index: true
      t.references :product, foreign_key: true, null: false, index: true
      t.date :expiration_date, null: false
      t.integer :amount, null: false
      t.date :order_date, null: false

      t.timestamps
    end
  end
end
