# frozen_string_literal: true
class Order < ApplicationRecord
  belongs_to :user, inverse_of: :orders
  belongs_to :product, inverse_of: :orders
  validates :expiration_date, presence: true
  validates :amount, presence: true
  validates :order_date, presence: true
end
