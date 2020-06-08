class Student
    attr_accessor :first_name

    @@all = []

    def initialize (first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name, status, instructor)
        BoatingTest.new(self, test_name, status, instructor)  
    end

    def self.find_student(student_first_name)
        self.all.find{|student| student.first_name == student_first_name}
    end

    def grade_percentage
        #iterate through all instances of BoatingTest and return the status of each test taken by the student.
       studenttests= BoatingTest.all.select {|test| test.student.first_name == self.first_name}
       passedtests= studenttests.select {|test| test.status == "passed"}
       grade_percentage =(passedtests.length.to_f/studenttests.length.to_f)*100
    end
end

