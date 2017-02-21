# frozen_string_literal: true
class OrderSerializer < ActiveModel::Serializer
  attributes :id, :product, :user, :expiration_date, :amount, :order_date

  # def user
  #   object.user.email
  # end
  #
  # def product
  #   object.product.name
  # end
end
