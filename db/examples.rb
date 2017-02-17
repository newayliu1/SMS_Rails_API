# frozen_string_literal: true
# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end
Product.transaction do
  %w(apple pear banana orange cheese milk).each do |product|
    next if User.exists?
    Product.create!(name: product)
  end
end

User.transaction do
  User.create!(
    email: 'john@gmail.com',
    password: 'topsecret',
    password_confirmation: 'topsecret'
  )
end

Inventory.transaction do
  Inventory.create!(price: 3,
                    section: 1,
                    user: User.first,
                    product: Product.all.sample)
end
