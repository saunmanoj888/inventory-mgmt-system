FactoryBot.define do
  factory :ware_house do
    wh_code { 'MU1234wwwww3' }
    name { 'Mumbai' }
    pincode  { '410206' }
    max_capacity  { 100000 }
  end
end
