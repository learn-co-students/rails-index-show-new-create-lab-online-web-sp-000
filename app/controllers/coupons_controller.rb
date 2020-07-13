class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def show
    if params[:id]
      @coupon = Coupon.find(params[:id])
    end
  end

  def new
  end

  def create
    @coupon = Coupon.new
    @coupon.coupon_code = params[:coupon][:coupon_code]
    @coupon.store = params[:coupon][:store]
    @coupon.save
    redirect_to coupons_path
  end
end
