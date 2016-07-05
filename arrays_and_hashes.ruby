@students = []

def get_students students
  students || []
end

def create_student student
  new_student = {
    first_name: student[:first_name],
    last_name: student[:last_name],
    course_name: student[:course_name]
  }
  @students.push new_student
end

matt = {first_name:'matt', last_name: 'oconnor', course_name: 'WDI'}

john = {first_name:'john', last_name: 'doe', course_name: 'WDI'}

jane = {first_name:'jane', last_name: 'zelda', course_name: 'UXI'}

create_student matt
create_student john
create_student jane
p @students

def sort_student students
  sorted_students = students.sort_by { |student| student[:last_name] }
  sorted_students.each do |student|
    p "#{student[:last_name]}, #{student[:first_name]} - #{student[:course_name]}"
  end
end

sort_student @students

p "There are #{@students.length} students in the class"

def student_info student
  p student.keys
end

student_info matt