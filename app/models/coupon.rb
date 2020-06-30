class Coupon < ActiveRecord::Base
  validates :coupon_code, :store, presence: true
end
