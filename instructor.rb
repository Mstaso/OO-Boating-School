class Instructor
    attr_reader :instructor_name
    @@all = []

    def initialize (instructor_name)
        @instructor_name = instructor_name
        @@all << self
    end

    def self.all
        @@all
    end
    
    def pass_student(student, test_name)
       testtopass = BoatingTest.all.find { |test|
        test.student.first_name == student.first_name && test.test_name == test_name }        
            if testtopass
                testtopass.status = "passed"
            else
                BoatingTest.new(student, test_name, "passed", self)   
            end
    end

    def fail_student(student, test_name)
        testtofail = BoatingTest.all.find { |test|
         test.student.first_name == student.first_name && test.test_name == test_name }        
             if testtofail
                 testtofail.status = "failed"
             else
                 BoatingTest.new(student, test_name, "failed", self)   
             end
     end

end
