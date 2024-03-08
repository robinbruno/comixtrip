
Composition.destroy_all
puts "db Element is dead"
Element.destroy_all
puts "db Element is dead"
Vignette.destroy_all
puts "db Vignette is dead"
ComicTrip.destroy_all
puts "db Comics is dead"
User.destroy_all
puts "db User is dead"

puts "Creating the db with user seeds..."
erwan = User.create!(first_name: "Erwan",last_name: "Ruaud", nickname: "Rookmoot", email: "erwanruaud@mail.com", password: "1234456", avatar:"https://avatars.githubusercontent.com/u/149379418?v=4")
romain = User.create!(first_name: "Romain",last_name: "Bruzeau", nickname: "Carapoule", email: "romainbruzeau@mail.com", password: "1234456", avatar:"https://avatars.githubusercontent.com/u/36406518?v=4")
kalek = User.create!(first_name: "Kalek", last_name: "Chahed", nickname: "Pafleuch", email: "kalekchacha@mail.com", password: "1234456", avatar:"https://avatars.githubusercontent.com/u/155948767?v=4")
puts "#{User.count} users in database"

background_element_1 = Element.create!(
  image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/c_scale,w_260/v1709731493/Classroom1.webp",
  category: "background"
)

fritz_element_1 = Element.create!(
  image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/v1709731422/Fritz_front_left.png",
  category: "character"
)

teacher_element_1 = Element.create!(
  image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/v1709731428/Teacher_front_right.png",
  category: "character"
)
puts "#{Element.count} element were added to the database!"

comic_trip_1 = ComicTrip.create!(
  title: "Fritz at school",
  category: "Fritz",
  user: erwan
)
puts "#{ComicTrip.count} comic trip were added to the database!"


vignette1 = Vignette.create!(
  text: "",
  comic_trip: comic_trip_1
)
vignette2 = Vignette.create!(
  text: "Is anybody here ?",
  comic_trip: comic_trip_1
)
vignette3 = Vignette.create!(
  text: "YUHUUUUUUUUU",
  comic_trip: comic_trip_1
)
puts "#{Vignette.count} vignettes were added to the database!"

Composition.create!(vignette: vignette1, element: background_element_1, z_index: 0)
Composition.create!(vignette: vignette2, element: background_element_1, z_index: 0)
Composition.create!(vignette: vignette2, element: fritz_element_1, z_index: 1)
Composition.create!(vignette: vignette3, element: background_element_1, z_index: 0)
Composition.create!(vignette: vignette3, element: fritz_element_1, z_index: 1)
Composition.create!(vignette: vignette3, element: teacher_element_1, z_index: 1)

background_element = Element.create!(
  image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/ar_1:1,c_fill,e_art:hokusai,g_auto,w_260/v1709731578/Classroom2.webp",
  category: "background"
)

fritz_element = Element.create!(
  image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/v1709910768/Toto_front_left_kejnq7.png",
  category: "character"
)

teacher_element = Element.create!(
  image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/v1709910914/Teacher_2_uqgepf.png",
  category: "character"
)
puts "#{Element.count} element were added to the database!"

comic_trip = ComicTrip.create!(
  title: "Toto à l'école",
  category: "Toto",
  user: erwan
)
puts "#{ComicTrip.count} comic trip were added to the database!"


vignette4 = Vignette.create!(
  text: "",
  comic_trip: comic_trip
)
vignette5 = Vignette.create!(
  text: "Il y a quelqu'un ?",
  comic_trip: comic_trip
)
vignette6 = Vignette.create!(
  text: "YUHUUUUUUUUU",
  comic_trip: comic_trip
)
puts "#{Vignette.count} vignettes were added to the database!"

Composition.create!(vignette: vignette4, element: background_element, z_index: 0)
Composition.create!(vignette: vignette5, element: background_element, z_index: 0)
Composition.create!(vignette: vignette5, element: fritz_element, z_index: 1)
Composition.create!(vignette: vignette6, element: background_element, z_index: 0)
Composition.create!(vignette: vignette6, element: fritz_element, z_index: 1)
Composition.create!(vignette: vignette6, element: teacher_element, z_index: 1)
