class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def show
    @coupons = Coupon.find(params[:id])
  end

  def new
    @coupons = Coupon.new(params[:id])
  end

  def create
    @coupons = Coupon.new(coupon_code: params[:coupon_code], store: params[:store])
    @coupons.save
    redirect_to coupon_path(@coupon)
  end
end