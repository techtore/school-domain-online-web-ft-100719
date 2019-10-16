# code here!
class School
attr_accessor :name, :roster

  def initialize(name)
  @name = name 
  @roster = {}
  end
  def add_student(student_name, grade)
    roster[grade] ||= [] #if it has a value then use that value otherwise set it equal to whatever is on the right of it.so if there isn't a grade set it equal to an array. the shovel in student name into roster
    roster[grade] << student_name
  end 
  def grade(grade) #intance method grade takes in a number(grade) and it's going to return the students in the grarde
    roster[grade]
  end
  def sort
    roster.each do |grade, name| #doesn't need a parameter because it's going to call on the method. could do self.roster instead of @roster. It calls theroster on the instance that got us in here. Self is a context verb 
      roster[grade]= name.sort
    end
  end
end 