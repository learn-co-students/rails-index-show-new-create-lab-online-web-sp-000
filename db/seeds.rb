# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Coupon.create(coupon_code:"JulySell", store: "Macys")
Coupon.create(coupon_code:"SummerOutdoors", store: "Dick's Sports")
Coupon.create(coupon_code:"SummerFood", store: "Safeway")
Coupon.create(coupon_code:"NewDeals123", store: "Amazon")