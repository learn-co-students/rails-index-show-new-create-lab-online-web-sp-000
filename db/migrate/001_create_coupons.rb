class CreateCoupons < ActiveRecord::Migration
    def change
        create_table :coupons do |t|
          t.string :store, null: false
          t.string :coupon_code, null: false
    
          t.timestamps null: false
        end
      end
    end