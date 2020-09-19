class CreateCoupons < ActiveRecord::Migration
def change
    create_table :coupons do |t|
      t.string :store
      t.text :coupon_code

      t.timestamps null: false
    end
  end

end