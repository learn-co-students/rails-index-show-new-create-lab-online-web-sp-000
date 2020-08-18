desc 'clean db'
task :clean do
    Coupon.destroy_all
end