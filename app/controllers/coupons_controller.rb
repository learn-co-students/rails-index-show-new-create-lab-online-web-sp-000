require 'pry'
class CouponsController < ApplicationController
    def index 
        @coupon = Coupon.all 
    end 

    def new 
    end 
end
