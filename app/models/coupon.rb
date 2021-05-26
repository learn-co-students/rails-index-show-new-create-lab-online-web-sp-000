class Coupon < ApplicationRecord
    def code_store
        self.coupon_code + "|" + self.store
    end
end