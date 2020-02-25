class CouponsController < ApplicationController
    def index
      @coupons = Coupon.all
    end
  
    def show
      @coupon = Coupon.find(params[:id])
    end
  
    def new
      @coupon = Coupon.new
    end
  
    # def create #with actions like create, we don't want a view template
    #   # –– all we want is for the action to communicate with the database and then redirect to a different page.
    #   @post = Post.new #Create a new Post instance#
    #   @post.title = params[:title]#Pass in the parameters from the form.
    #   #  to pull in form data - stuff that a user has typed in and submitted.
    #   #When a user submits a form, it is the params hash that contains all the input data
    #   #As long as the form is routed to the create method we've written (in config/routes.rb),
    #   # we'll be able to initialize a new instance of Post, grab those input values from params,
    #   # assign them the post instance attributes and save the instance to our database
    #   @post.description = params[:description]
    #   @post.save
    #   # need to redirect the user after they've filled out the form
    #   redirect_to coupon_path(@coupon)#create action, we're following the convention of redirecting to the new resource's show page
    # end

    # def create
    #     @coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
    #     redirect_to coupon_path(@coupon)
    # end

    def create
        @coupon = Coupon.new
        @coupon[:coupon_code] = params[:coupon][:coupon_code]
        @coupon[:store] = params[:coupon][:store]
        @coupon.save
        redirect_to coupon_path(@coupon)
    end
end
  