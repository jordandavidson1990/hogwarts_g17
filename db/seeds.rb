require('pry')
require_relative('../models/student')

Student.delete_all()


harry = Student.new({
  'first_name' => 'Harry',
  'last_name' => 'Potter',
  'age' => 11,
  'house' => 'Griffindor'
  });

harry.save()
hermione = Student.new({
  'first_name' => 'Hermione',
  'last_name' => 'Granger',
  'age' => 10,
  'house' => 'Griffindor'
  });

hermione.save()
draco = Student.new({
  'first_name' => 'Draco',
  'last_name' => 'Malfoy',
  'age' => 13,
  'house' => 'Slytherin'
  });

draco.save()

binding.pry
nil
