# frozen_string_literal: true
class InventorySerializer < ActiveModel::Serializer
  attributes :id, :product, :user, :price, :section

  def user
    object.user.id
  end

  def product
    object.product.id
  end
end
