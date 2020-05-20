require 'pry'

class CouponsController < ApplicationController
   def index 
      @coupons = Coupon.all 
   end 

   def new 
   end 


   def show 
      @coupon = Coupon.find(params[:id])
   end 

   def create 
      @coupon = Coupon.new
      @coupon.coupon_code = coupon_params[:coupon_code]
      @coupon.store = coupon_params[:store]
      @coupon.save 
      redirect_to coupon_path(@coupon)
   end 

   private 
      # permit params
      def coupon_params 
         params.require(:coupon).permit(:coupon_code, :store)
      end 
end
