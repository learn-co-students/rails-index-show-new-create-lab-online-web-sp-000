class CouponsController < ApplicationController
  
  def index    
  end

  def create
    @coupon = Coupon.create()
    redirect_to coupon_path(@coupon)
  end
  
end