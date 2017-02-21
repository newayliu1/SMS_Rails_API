# frozen_string_literal: true
class Inventory < ApplicationRecord
  belongs_to :user, inverse_of: :inventories
  belongs_to :product, inverse_of: :inventories
  validates :price, :section, presence: true
end
