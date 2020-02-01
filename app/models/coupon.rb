class Coupon < ActiveRecord::Base
    def link
        self.coupon_code + self.store
    end
end
