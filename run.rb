require 'pry'
require_relative './boatingtest.rb'
require_relative './instructor.rb'
require_relative './student.rb'

student1=Student.new(first_name:"malcolm")
student2=Student.new(first_name:"sarah")

instructor1=Instructor.new(instructor_name:"tonya")

student2.add_boating_test("docking", "failed", instructor1)
student1.add_boating_test("docking", "passed", instructor1)
student1.add_boating_test("driving", "passed", instructor1)
student1.add_boating_test("turning", "failed", instructor1)


binding.pry