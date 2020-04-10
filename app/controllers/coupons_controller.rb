class CouponsController < ApplicationController
  def new
    @coupon = Coupon.new(coupon_code: params[:coupon_code], store: params[:store])
    @coupon.save
    redirect_to coupon_path(@coupon.id)
  end
  
  def show
    @coupon = Coupon.find(params[:id])
  end
  
  def index
    @coupons = Coupon.all
  end
  
  def create 
    @coupon = Coupon.new(coupon_code: params[:coupon_code], store: params[:store])
    @coupon.save
    redirect_to coupons_path(@coupon.id)
  end
  
end