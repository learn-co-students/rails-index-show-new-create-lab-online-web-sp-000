class Coupon < ActiveRecord::Base
    def format
        self.coupon_code + " | " + self.store
    end
end