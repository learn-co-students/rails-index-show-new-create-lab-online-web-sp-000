class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def create
            byebug
        
        @coupon = Coupon.new
        @coupon.coupon_code = params[":coupon"][":coupon_code"]
        @coupon.store = params[":coupon"][":store"]
        @coupon.save
        
         redirect_to coupon_path(@coupon)
    end

    def new
    end

    def destroy
        @coupon = Coupon.find(params[:id])
        @coupon.destroy
    end

end
