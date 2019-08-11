class CouponsController < ApplicationController
  before_action :set_coupon, only: [:show]

  def new
    render 'new'
  end

  def index
    @coupons = Coupon.all
  end

  def create
    @coupon = Coupon.create(coupon_params)
    redirect_to @coupon
  end

  def show
  end

  private
    def set_coupon
      @coupon = Coupon.find(params[:id])
    end

    def coupon_params
      params.require(:coupon).permit(:coupon_code, :store)
    end

end
