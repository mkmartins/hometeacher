class HomeTeacher < ActiveRecord::Base
  belongs_to :member
  validates_formatting_of :email, using: :email
end
