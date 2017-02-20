# frozen_string_literal: true
class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product
  validates :expiration_date, presence: true
  validates :amount, presence: true
  validates :order_date, presence: true
end
