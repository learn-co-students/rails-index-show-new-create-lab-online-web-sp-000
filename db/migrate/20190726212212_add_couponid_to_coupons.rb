class AddCouponidToCoupons < ActiveRecord::Migration[5.0]
  def change
    add_column :coupons, :coupon_id, :integer
  end
end
