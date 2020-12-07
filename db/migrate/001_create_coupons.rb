class CreateCoupons < ActiveRecord::Migration
    def change
      create_table :coupons do |t|
        t.string :coupon_codes
        t.string :store
  
        t.timestamps null: false
      end
    end
  end
  