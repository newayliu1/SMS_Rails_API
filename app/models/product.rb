# frozen_string_literal: true
class Product < ApplicationRecord
  has_many :inventories
  has_many :orders
  validates :name, presence: true
end
