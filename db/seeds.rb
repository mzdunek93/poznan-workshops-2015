puts "Seeds: start"
TEACHER_TITLES = %w(Dr. Prof. TA)
User.create!(email: 'admin@admin.com',password: 'adminadmin')

30.times do
  Teacher.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    academic_title: TEACHER_TITLES.sample
  )
end

teachers = Teacher.all
20.times do
  SubjectItem.create!(
    title: Faker::Lorem.sentence,
    teacher: teachers.sample
  )
end

40.times do
  student = Student.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
  student.create_payment(
    january: Faker::Date.backward(200),
    february: Faker::Date.backward(200),
    march: Faker::Date.backward(200),
    april: Faker::Date.backward(200),
    may: Faker::Date.backward(200),
    june: Faker::Date.backward(200),
    july: Faker::Date.backward(200)
  )
end

students = Student.all
SubjectItem.all.each do |subject_item|
  subject_item.students << students.sample(rand(1..4))
end

SubjectItem.all.each do |subject_item|
  subject_item.students.each do |student|
    rand(1..5).times do
      subject_item.subject_item_notes << SubjectItemNote.create(student: student,
                                                                subject_item: subject_item,
                                                                value: rand(1..6))
    end
  end
end

puts "Seeds: done"
