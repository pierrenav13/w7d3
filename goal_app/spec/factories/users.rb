FactoryBot.define do
  factory :user do
    username { Faker::Internet.email }
    password { 'password_test' }
  end
end


# Template--
#
# FactoryBot.define do
# 	Factory :user do
# 		Username { Faker::Movies::HarryPotter.character }
# 		Email { Faker::Internet.email }
# 		Password { ‘password’ }
# 		Age { 337 }
# 	end
# end

