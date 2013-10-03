require_relative './db/config'
require_relative './app/models/teacher'
require_relative './app/models/student'
require_relative './app/models/roster'

students = Student.all
teachers = Teacher.all


# students.each do |student|
#   teachers.each do |teacher|
#     # puts "Student_id: #{student.id.to_i}"
#     # puts "Teacher_id: #{teacher.id.to_i}"
#     Roster.create!(student_id: student.id.to_i,
#                             teacher_id: teacher.id.to_i)
#   e
# end

# p Roster.all

######  TEST ########
# This creation should fail because it already exists
# Roster.create!(student_id: 2,
#                        teacher_id: 2)  
