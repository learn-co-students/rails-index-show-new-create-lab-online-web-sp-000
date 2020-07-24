class CuponsController < ApplicationController
  
    def index
      @cupons = Cupon.all
    end
  
    def show
      @cupon = Cupon.find(params[:id])
    end
  
    def new
      @cupon = Cupon.new
    end
  
    def create
      @cupon = Cupon.new
      @cupon.cupon_code = params[:cupon_code]
      @cupon.store = params[:store]
      @cupon.save
      redirect_to cupon_path(@cupon)
    end
  
  end