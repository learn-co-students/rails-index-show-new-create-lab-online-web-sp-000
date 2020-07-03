class Coupon<ActiveRecord::Base
    def deals
        self.coupon_code+"-"+self.store
    end
    
end