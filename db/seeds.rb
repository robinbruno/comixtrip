
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
erwan = User.create!(first_name: "Erwan",last_name: "Jones", nickname: "Rookmoot", email: "erwanruaud@mail.com", password: "1234456", avatar:"https://avatars.githubusercontent.com/u/149379418?v=4")
romain = User.create!(first_name: "Romain",last_name: "Bruzeau", nickname: "Carapoule", email: "romainbruzeau@mail.com", password: "1234456", avatar:"https://avatars.githubusercontent.com/u/36406518?v=4")
kalek = User.create!(first_name: "Kalek", last_name: "Chahed", nickname: "Pafleuch", email: "kalekchacha@mail.com", password: "1234456", avatar:"https://avatars.githubusercontent.com/u/155948767?v=4")
puts "#{User.count} users in database"



# **************************


# 7 BACKGROUND ELEMENTS:

bg_default = Element.create!(
  image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/v1710169219/Comix_trip_material/bg_default_ztoegz.png",
  category: "background"
)
ch_1_default = Element.create!(
  image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/v1710169220/Comix_trip_material/ch_1_default_omnb9y.png",
  category: "character"
)
ch_2_default = Element.create!(
  image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/v1710169219/Comix_trip_material/bg_default_ztoegz.png",
  category: "character"
)

bg_classroom = Element.create!(
  image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/ar_1:1,c_fill,e_art:hokusai,g_auto,w_260/v1709731578/Classroom2.webp",
  category: "background"
)
bg_science_classroom = Element.create!(
  image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/c_pad,w_260,h_260/v1710158553/Comix_trip_material/BG_Science_classroom_qiovf5.webp",
  category: "background"
)
bg__schoolbus = Element.create!(
  image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/c_pad,w_260,h_260/v1710158552/Comix_trip_material/BG_Schoolbus_beg5o2.webp",
  category: "background"
)
bg_livingroom = Element.create!(
  image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/c_pad,w_260,h_260/v1710158551/Comix_trip_material/BG_Livingroom_iptjz9.webp",
  category: "background"
)
bg_gymnasium = Element.create!(
  image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/c_pad,w_260,h_260/v1710158550/Comix_trip_material/BG_Gymnasium_c1x2su.webp",
  category: "background"
)
bg_campfire = Element.create!(
  image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/c_pad,w_260,h_260/v1710158550/Comix_trip_material/BG_Campfire_xmjjii.webp",
  category: "background"
)
bg_bedroom = Element.create!(
  image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/c_pad,w_260,h_260/v1710158549/Comix_trip_material/BG_Bedroom_gmy4p6.webp",
  category: "background"
)


  # CHARACTER #1 ELEMENTS:
  ch_fritz_element = Element.create!(
    image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/v1709731422/Comix_trip_material/Fritz_front_left.png",
    category: "character"
  )
  ch_fritzette_element = Element.create!(
    image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/c_pad,w_260,h_260/v1710163390/Comix_trip_material/ch_fritzette_mllbti.png",
    category: "character"
  )

  # CHARACTER #2 ELEMENTS:
  ch_older_man_teacher = Element.create!(
    image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/c_pad,w_260,h_260/v1710159777/Comix_trip_material/ch_older_man_teacher_ir3zxk.png",
    category: "character"
  )
  ch_older_woman_teacher = Element.create!(
    image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/c_pad,w_260,h_260/v1710159723/Comix_trip_material/ch_older_woman_teacher_ubjmnv.png",
    category: "character"
  )
  ch_mother_element = Element.create!(
    image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/c_pad,w_260,h_260/v1710159772/Comix_trip_material/ch_mother_dvzmwj.png",
    category: "character"
  )

  # *******

  comic_trip_1 = ComicTrip.create!(
    title: "Fritz in the classroom!",
    category: "Fritz",
    user: erwan
  )
  puts "#{ComicTrip.count} comic trip were added to the database!"

  vignette1 = Vignette.create!(
    text01: "",
    comic_trip: comic_trip_1
  )
  vignette2 = Vignette.create!(
    text01: "Is anybody there?",
    comic_trip: comic_trip_1
  )
  vignette3 = Vignette.create!(
    text01: "YUHUUUUUUUUU",
    comic_trip: comic_trip_1
  )
  puts "#{Vignette.count} vignettes were added to the database!"

Composition.create!(vignette: vignette1, element: bg_classroom, z_index: 0)
Composition.create!(vignette: vignette2, element: bg_classroom, z_index: 0)
Composition.create!(vignette: vignette2, element: ch_fritz_element, z_index: 1)
Composition.create!(vignette: vignette3, element: bg_classroom, z_index: 0)
Composition.create!(vignette: vignette3, element: ch_fritz_element, z_index: 1)
Composition.create!(vignette: vignette3, element: ch_older_woman_teacher, z_index: 1)

puts "#{comic_trip_1.title} has been created!"

# *******

comic_trip_2 = ComicTrip.create!(
  title: "Fritz does sciences",
  category: "Fritz",
  user: erwan
)
puts "#{comic_trip_2.title} comic trip was added to the database!"

vignette4 = Vignette.create!(
  text01: "",
  comic_trip: comic_trip_2
)
vignette5 = Vignette.create!(
  text01: "Is anybody there?",
  comic_trip: comic_trip_2
)
vignette6 = Vignette.create!(
  text01: "YUHUUUUUUUUU",
  comic_trip: comic_trip_2
)
puts "#{Vignette.count} vignettes were added to the database!"

Composition.create!(vignette: vignette4, element: bg_science_classroom, z_index: 0)
Composition.create!(vignette: vignette5, element: bg_science_classroom, z_index: 0)
Composition.create!(vignette: vignette5, element: ch_fritz_element, z_index: 1)
Composition.create!(vignette: vignette6, element: bg_science_classroom, z_index: 0)
Composition.create!(vignette: vignette6, element: ch_fritz_element, z_index: 1)
Composition.create!(vignette: vignette6, element: ch_older_woman_teacher, z_index: 1)

puts "#{comic_trip_2.title} has been created!"

# *******

comic_trip_3 = ComicTrip.create!(
  title: "Fritz on his way to school",
  category: "Fritz & Fritzette",
  user: erwan
)
puts "#{comic_trip_3.title} comic trip was added to the database!"

vignette7 = Vignette.create!(
  text01: "",
  comic_trip: comic_trip_3
)
vignette8 = Vignette.create!(
  text01: "Is anybody there?",
  comic_trip: comic_trip_3
)
vignette9 = Vignette.create!(
  text01: "YUHUUUUUUUUU",
  comic_trip: comic_trip_3
)
puts "#{Vignette.count} vignettes were added to the database!"

Composition.create!(vignette: vignette7, element: bg__schoolbus, z_index: 0)
Composition.create!(vignette: vignette8, element: bg__schoolbus, z_index: 0)
Composition.create!(vignette: vignette8, element: ch_fritz_element, z_index: 1)
Composition.create!(vignette: vignette9, element: bg__schoolbus, z_index: 0)
Composition.create!(vignette: vignette9, element: ch_fritz_element, z_index: 1)
Composition.create!(vignette: vignette9, element: ch_fritzette_element, z_index: 1)

puts "#{comic_trip_3.title} has been created!"

# *******

comic_trip_4 = ComicTrip.create!(
  title: "Fritzette at home",
  category: "Fritzette",
  user: erwan
)
puts "#{comic_trip_4.title} comic trip was added to the database!"

vignette10 = Vignette.create!(
  text01: "",
  comic_trip: comic_trip_4
)
vignette11 = Vignette.create!(
  text01: "Is anybody there?",
  comic_trip: comic_trip_4
)
vignette12 = Vignette.create!(
  text01: "YUHUUUUUUUUU",
  comic_trip: comic_trip_4
)
puts "#{Vignette.count} vignettes were added to the database!"

Composition.create!(vignette: vignette10, element: bg_livingroom, z_index: 0)
Composition.create!(vignette: vignette11, element: bg_livingroom, z_index: 0)
Composition.create!(vignette: vignette11, element: ch_fritzette_element, z_index: 1)
Composition.create!(vignette: vignette12, element: bg_livingroom, z_index: 0)
Composition.create!(vignette: vignette12, element: ch_fritzette_element, z_index: 1)
Composition.create!(vignette: vignette12, element: ch_mother_element, z_index: 1)

puts "#{comic_trip_4.title} has been created!"

# *******

comic_trip_5 = ComicTrip.create!(
  title: "Fritz moves his body!",
  category: "Fritz",
  user: erwan
)
puts "#{comic_trip_5.title} comic trip was added to the database!"

vignette13 = Vignette.create!(
  text01: "",
  comic_trip: comic_trip_5
)
vignette14 = Vignette.create!(
  text01: "Is anybody there?",
  comic_trip: comic_trip_5
)
vignette15 = Vignette.create!(
  text01: "YUHUUUUUUUUU",
  comic_trip: comic_trip_5
)
puts "#{Vignette.count} vignettes were added to the database!"

Composition.create!(vignette: vignette13, element: bg_gymnasium, z_index: 0)
Composition.create!(vignette: vignette14, element: bg_gymnasium, z_index: 0)
Composition.create!(vignette: vignette14, element: ch_fritz_element, z_index: 1)
Composition.create!(vignette: vignette15, element: bg_gymnasium, z_index: 0)
Composition.create!(vignette: vignette15, element: ch_fritz_element, z_index: 1)
Composition.create!(vignette: vignette15, element: ch_older_man_teacher, z_index: 1)

puts "#{comic_trip_5.title} has been created!"

# *******

comic_trip_6 = ComicTrip.create!(
  title: "Fritz and Fritzette are scouting",
  category: "Fritz & Fritzette",
  user: erwan
)
puts "#{comic_trip_6.title} comic trip was added to the database!"

vignette16 = Vignette.create!(
  text01: "",
  comic_trip: comic_trip_6
)
vignette17 = Vignette.create!(
  text01: "Is anybody there?",
  comic_trip: comic_trip_6
)
vignette18 = Vignette.create!(
  text01: "YUHUUUUUUUUU",
  comic_trip: comic_trip_6
)
puts "#{Vignette.count} vignettes were added to the database!"

Composition.create!(vignette: vignette16, element: bg_campfire, z_index: 0)
Composition.create!(vignette: vignette17, element: bg_campfire, z_index: 0)
Composition.create!(vignette: vignette17, element: ch_fritz_element, z_index: 1)
Composition.create!(vignette: vignette18, element: bg_campfire, z_index: 0)
Composition.create!(vignette: vignette18, element: ch_fritz_element, z_index: 1)
Composition.create!(vignette: vignette18, element: ch_fritzette_element, z_index: 1)

puts "#{comic_trip_6.title} has been created!"

# *******

comic_trip_7 = ComicTrip.create!(
  title: "Fritzette cleans her room",
  category: "Fritzette",
  user: erwan
)
puts "#{comic_trip_7.title} comic trip was added to the database!"

vignette19 = Vignette.create!(
  text01: "",
  comic_trip: comic_trip_7
)
vignette20 = Vignette.create!(
  text01: "Is anybody there?",
  comic_trip: comic_trip_7
)
vignette21 = Vignette.create!(
  text01: "YUHUUUUUUUUU",
  comic_trip: comic_trip_7
)
puts "#{Vignette.count} vignettes were was to the database!"

Composition.create!(vignette: vignette19, element: bg_bedroom, z_index: 0)
Composition.create!(vignette: vignette20, element: bg_bedroom, z_index: 0)
Composition.create!(vignette: vignette20, element: ch_fritzette_element, z_index: 1)
Composition.create!(vignette: vignette21, element: bg_bedroom, z_index: 0)
Composition.create!(vignette: vignette21, element: ch_fritzette_element, z_index: 1)
Composition.create!(vignette: vignette21, element: ch_mother_element, z_index: 1)

puts "#{comic_trip_7.title} has been created!"
