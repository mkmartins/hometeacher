class HomeTeacher < ActiveRecord::Base
  belongs_to :member
  validates_formatting_of :email, using: :email
  validates_formatting_of :phone_number, using: :us_phone
end
