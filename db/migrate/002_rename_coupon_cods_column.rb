class RenameCouponCodsColumn < ActiveRecord::Migration
  def change
    rename_column :coupons, :coupon_cods, :coupon_code
  end
end
