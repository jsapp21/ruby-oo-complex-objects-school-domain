class School 

    def initialize(name)
        @name = name 
        @roster = {}
    end 

    attr_accessor :name, :roster
    
    # roster contains keys of grade levels
    def add_student(student_name, grade)
        @roster[grade] ||= []
        @roster[grade] << student_name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |grade, names|
            @roster[grade] = names.sort
        end
    end

end 
