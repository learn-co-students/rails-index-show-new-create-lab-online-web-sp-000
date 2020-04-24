class Coupon < ApplicationRecord

    def full_link
        self.store + " - " + self.coupon_code
    end


end
