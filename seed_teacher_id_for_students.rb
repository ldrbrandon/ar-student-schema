
require_relative './db/config'
require_relative './app/models/teacher'
require_relative './app/models/student'

students = Student.all
teachers = Teacher.all
# p teachers[0].id

teacher_counter = 0
students.each do |student|
  if teacher_counter == 10
    teacher_counter = 0
  end
  student.update(teacher_id: teachers[teacher_counter].id.to_i)
  # student.teacher_id = teachers[teacher_counter].id.to_i
  # student.save
  teacher_counter += 1 
end

# p students