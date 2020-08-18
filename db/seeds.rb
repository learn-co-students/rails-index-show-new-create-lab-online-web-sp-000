# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

c_a = Coupon.create(coupon_code: "ASD123", store: "Dean and Deluca")
c_b = Coupon.create(coupon_code: "ASD124", store: "Best Buy")
c_c = Coupon.create(coupon_code: "ASD125", store: "Apple Store")
