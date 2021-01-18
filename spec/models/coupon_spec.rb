require 'rails_helper'

describe Coupon do
  before(:each) do
    @coupon = Coupon.create(coupon_code: "FREEBIE", store: "Amazon")
    @coupon = Coupon.create(coupon_code: "MOMMY", store: "Etsy")
    @coupon = Coupon.create(coupon_code: "MONEY", store: "eBay")
  end

  it 'can be created' do
    expect(@coupon).to be_valid
  end
end