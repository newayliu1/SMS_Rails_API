# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :products, through: :inventories
  has_many :products, through: :orders
  has_many :inventories
  has_many :orders
end
