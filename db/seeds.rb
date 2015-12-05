# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

teacher = Teacher.create(first_name: 'Sam', last_name: "Trillest", email: "sam@whittier.edu", password: "education")

students = [
  ["Aileen", "Cacayorin", "acacayorin@gmail.com"],
  ["Shannon", "Mulloy", "smulloy21@gmail.com"],
  ["Austin", "Kincaid", "aokincaid@gmail.com"],
  ["Caterina", "Paun", "caterina.paun@gmail.com"]
]

students.each do |first, last, email|
  teacher.students.create(first_name: first, last_name: last, parent_email: email, teacher_id: teacher.id)
end
