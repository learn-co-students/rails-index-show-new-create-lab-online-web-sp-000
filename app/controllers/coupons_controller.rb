class CouponsContoller < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new
    @coupon = Coupon.new
  end

  def create
    @coupon = Coupon.new
    @coupon.coupon =  params[:coupon_code]
    @coupon.store =  params[:store]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end
end
