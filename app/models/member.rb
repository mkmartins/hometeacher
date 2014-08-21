class Member < ActiveRecord::Base
  has_many :home_teachers, through: :home_teachings
  has_many :home_teachings
  accepts_nested_attributes_for :home_teachers
end
