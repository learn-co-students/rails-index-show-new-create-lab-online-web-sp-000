# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Coupon.create(store: "C&B", coupon_code: "CBFALL20")
Coupon.create(store: "VS", coupon_code: "VSFALL23")
Coupon.create(store: "BBB", coupon_code: "BBBFALL20")