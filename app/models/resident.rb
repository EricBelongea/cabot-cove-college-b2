class Resident < ApplicationRecord
  # validate_presence_of :name
  # validate_presence_of :age
  # validate_presence_of :occupation
  validates :name, presence: true
  validates :age, presence: true
  validates :occupation, presence: true
  
  has_many :resident_courses
  has_many :courses, through: :resident_courses

end
