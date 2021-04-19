class Coupon < ApplicationRecord
    def show_name
        self.coupon_code + "|" + self.store_name
    end
end
