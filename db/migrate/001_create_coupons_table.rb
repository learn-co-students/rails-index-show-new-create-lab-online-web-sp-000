class CreateCouponsTable < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.string :coupon_cods
      t.string :store

      t.timestamps null: false
    end
  end
end
