# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

macys = Coupon.create(coupon_code: "MACYTHX", store: "Macy's")
nike = Coupon.create(coupon_code: "JUSTDOIT", store: "Nike")
target = Coupon.create(coupon_code: "BULLSEYE", store: "Target")
