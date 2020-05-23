class CouponsController < ApplicationController

	def index
		@coupons = Coupon.all
	end

	def show
		find_coupon
	end

	def new
	end

	def create
		
		@coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
		redirect_to coupon_path(@coupon)
	end


	private

	def find_coupon
		@coupon = Coupon.find(params[:id])
	end


end
