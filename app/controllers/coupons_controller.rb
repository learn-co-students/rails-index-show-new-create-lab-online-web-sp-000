class CouponsController < ApplicationController

    before_action :find_coupon, only: [:show]

    def index
        @coupons = Coupon.all
    end

    def show
    end

    def new; end

    def create
        @coupon = Coupon.new
        @coupon[:store] = params[:coupon][:store]
        @coupon[:coupon_code] = params[:coupon][:coupon_code]
        @coupon.save
        redirect_to coupon_path(@coupon)
    end

    private
    def find_coupon
        @coupon = Coupon.find(params[:id])
    end
end
