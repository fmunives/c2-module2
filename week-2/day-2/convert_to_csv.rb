require 'csv'

Student = Struct.new(:name, :email)

def generate_csv(students)
  CSV.generate do |csv| 
    csv << [:name, :email]
    students.each { |student| csv << [student.name, student.email]  }   
  end
end

students = [
  Student.new("Julio", "jnavarro@able.co"),
  Student.new("ximena", "ximena@able.co"),
  Student.new("diego", "diego@able.co"),
  Student.new("jordi", "jordi@able.co"),
  Student.new("andres", "andres@able.co"),
]

puts generate_csv(students)