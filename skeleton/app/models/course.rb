class Course < ApplicationRecord
    
    has_many :enrollments,
        primary_key: :id,
        foreign_key: :course_id,
        class_name: :Enrollment

    has_many :enrolled_students,
        through: :enrollments,
        source: :user
    
    has_many :prerequisite,
        foreign_key: :prereq_id,
        class_name: :Course

    belongs_to :instructor,
        class_name: :User,
        foreign_key: :instructor_id
        
end
