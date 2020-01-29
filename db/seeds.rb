require('pry')
require_relative('../models/student')
require_relative('../models/house')

Student.delete_all()
House.delete_all()

gryffindor = House.new({
  'name' => 'Gryffindor',
  'logo' => 'https://cdn.shopify.com/s/files/1/1541/8579/products/BannerFlag-Gryffindor-HarryPotter-Product-_5-4895205600140_1.jpg?v=1520333907'
  });

slytherin = House.new({
  'name' => 'Slytherin',
  'logo' => 'http://cdn.shopify.com/s/files/1/1943/7257/products/BannerFlag-Slytherin-HarryPotter-Product-_3-4895205600157_grande.jpg?v=1520334092'
  })

hufflepuff = House.new({
  'name' => 'Hufflepuff',
  'logo' => 'http://cdn.shopify.com/s/files/1/1943/7257/products/BannerFlag-Hufflepuff-HarryPotter-Product-_2-4895205600164_grande.jpg?v=1520334061'
  });

ravenclaw = House.new({
  'name' => 'Ravenclaw',
  'logo' => 'https://i.etsystatic.com/8557472/r/il/4c8a34/1582738474/il_570xN.1582738474_9svc.jpg'
  });

gryffindor.save()
slytherin.save()
hufflepuff.save()
ravenclaw.save()

harry = Student.new({
  'first_name' => 'Harry',
  'last_name' => 'Potter',
  'age' => 11,
  'house_id' => gryffindor.id
  });

harry.save()
hermione = Student.new({
  'first_name' => 'Hermione',
  'last_name' => 'Granger',
  'age' => 10,
  'house_id' => gryffindor.id
  });

hermione.save()
draco = Student.new({
  'first_name' => 'Draco',
  'last_name' => 'Malfoy',
  'age' => 13,
  'house_id' => slytherin.id
  });

draco.save()

binding.pry
nil
