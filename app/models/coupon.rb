class Coupon < ActiveRecord::Base
    def to_s
      self.first_name + " " + self.last_name
    end
    def brief
        self.store + "|" + self.coupon_code
      end
  end