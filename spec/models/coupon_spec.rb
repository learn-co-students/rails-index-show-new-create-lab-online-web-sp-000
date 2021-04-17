require 'rails_helper'

describe Coupon do
  before(:each) do
    @coupon = Coupon.create!(coupon_code: "FREESTUFF", store_name: "Chipotle")
  end

  it 'can be created' do
    expect(@coupon).to be_valid
  end
end