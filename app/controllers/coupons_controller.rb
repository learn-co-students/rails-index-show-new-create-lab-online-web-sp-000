class CouponsController < ApplicationController

    def index
      @coupons = Coupon.all
    end
  
    def show
      @coupon = Coupon.find(params[:id])
    end
  
    def new
    end
  

  # This way will not allow Capybara tests to find feilds
  #
  #  def create
  #    @coupon = Coupon.new
  #    @coupon[:coupon_code] = params[:coupon_code]
  #    @coupon[:store] = params[:store]
  #    @coupon.save
  #    redirect_to coupon_path(@coupon)

  # Below is the method that allows tests to pass
  
  def create
    @coupon = Coupon.new
    @coupon[:coupon_code] = params[:coupon][:coupon_code]
    @coupon[:store] = params[:coupon][:store]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end
end
    end
  end
