# frozen_string_literal: true
class InventorySerializer < ActiveModel::Serializer
  attributes :id, :product, :user, :price, :section
end
