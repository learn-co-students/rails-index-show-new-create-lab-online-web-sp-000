# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Coupon.create(store: "Walmart", coupon_code: "20%")
Coupon.create(store: "Lowe's", coupon_code: "40%")
Coupon.create(store: "Home Depot", coupon_code: "50%")