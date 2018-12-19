class CouponsController < ApplicationController
  
  def index    
    @coupons = Coupon.all
  end

  def new; end

  def create
    @coupon = Coupon.create()
    redirect_to coupon_path(@coupon)
  end
  
end