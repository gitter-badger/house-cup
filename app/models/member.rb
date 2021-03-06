# == Schema Information
#
# Table name: members
#
#  id         :integer          not null, primary key
#  school_id  :integer
#  house_id   :integer
#  badge_id   :string(255)
#  email      :string(255)
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  deleted_at :datetime
#  grade      :string(255)
#

class Member < ActiveRecord::Base
	acts_as_paranoid
	
	belongs_to :school
	belongs_to :house
	has_many :point_assignments

	validates :badge_id, presence: true
end
