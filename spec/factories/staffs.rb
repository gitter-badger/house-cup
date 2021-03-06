# == Schema Information
#
# Table name: staffs
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  school_id              :string(255)
#  house_id               :integer
#  grade                  :string(255)
#  deleted_at             :datetime
#  name                   :string(255)
#

FactoryGirl.define do
  factory :staff do
  	email { Faker::Internet.email }
  	password { Faker::Internet.password }
  	password_confirmation { "#{password}" }
  	school_id "1"
  	association :house, factory: :house
  	grade "6"
  	name { Faker::Name.name  }
  end 
end