class Course < ApplicationRecord
  validates :name, presence: true
  
  has_many :resident_courses
  has_many :residents, through: :resident_courses

  def course_count
    residents.count
  end
end
