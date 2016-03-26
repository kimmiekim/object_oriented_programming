class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{@name}."
  end
end

class Student < Person
 def learn
   puts "I get it!"
 end
end

class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object."
  end
end


instructor = Instructor.new("Chris")
instructor.greeting

student = Student.new("Cristina")
student.greeting
instructor.teach

student.teach
# You can't call teach method on student
# because the teach method is instructor's behaviour not the student
# Although, the instrustor and students are under the same parent class, Person,
# teach and learn methods are distinct behaviour to each specific class we assigned them to.

#If we want to call teach method on student,
# we need to first set it under student class
