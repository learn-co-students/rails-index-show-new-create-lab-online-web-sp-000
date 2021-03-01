class CouponsController < ApplicationController
  before_action :set_coupon, only: [:show, :edit, :update, :destroy]

  # GET /coupons
  def index
    @coupons = Coupon.all
  end

  # GET /coupons/1
  def show; end

  # GET /coupons/new
  def new
    @coupon = Coupon.new

    render :'coupons/new'
  end

  def create
    c = params[:coupon]
    @coupon = Coupon.create!(coupon_code: c[:coupon_code], store: c[:store])

    redirect_to @coupon
  end

  # DELETE /coupons/1
  def destroy
    @coupon.destroy
  end

  private

  def set_coupon
    @coupon = Coupon.find(params[:id])
  end

end
