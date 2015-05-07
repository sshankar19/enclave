FactoryGirl.define do
  factory :discussion do
    author { FactoryGirl.create(:member) }
    title { "Discussion Title #{SecureRandom.hex(12)}" }
  end
end
