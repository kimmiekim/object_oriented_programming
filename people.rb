class Person
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
# you can't call teach method on student
# because the teach method is instructor's behaviour not the student
