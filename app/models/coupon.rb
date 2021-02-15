class Coupon < ApplicationRecord
    def card 
        "#{self.coupon_code}|#{self.store}"
    end
end
