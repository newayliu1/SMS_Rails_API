# frozen_string_literal: true
class Product < ApplicationRecord
  has_many :users, through: :inventories
  has_many :users, through: :orders
  has_many :inventories
  has_many :orders
  validates :name, presence: true
end
