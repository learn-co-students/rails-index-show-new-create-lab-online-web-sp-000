class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def new
  end

  def show
    @coupon = set_coupon
  end

  def create
    coupon = Coupon.create(store: params[:coupon][:store], coupon_code: params[:coupon][:coupon_code])
    redirect_to coupon_path(coupon)
  end

  private
  def set_coupon
    Coupon.find(params[:id])
  end
end