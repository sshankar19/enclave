FactoryGirl.define do
  factory :member do
    first_name 'Test'
    last_name 'User'
    handle { SecureRandom.hex(12) }
    email { "#{SecureRandom.hex(12)}@example.com" }
    password '12345678'
  end
end
