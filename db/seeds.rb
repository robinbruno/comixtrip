
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

png_placeholder = Element.create!(
  image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/v1710232232/Comix_trip_material/vignette_default_ygs7eu.png",
  category: "",
  name: "Placeholder"
)
bg_classroom = Element.create!(
  image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/c_pad,w_260,h_260/v1709731493/Comix_trip_material/BG_Classroom.webp",
  category: "background",
  name: "Classroom"
)
bg_science_classroom = Element.create!(
  image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/c_pad,w_260,h_260/v1710158553/Comix_trip_material/BG_Science_classroom_qiovf5.webp",
  category: "background",
  name: "Science Lab"
)
bg__schoolbus = Element.create!(
  image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/c_pad,w_260,h_260/v1710158552/Comix_trip_material/BG_Schoolbus_beg5o2.webp",
  category: "background",
  name: "Schoolbus"
)
bg_livingroom = Element.create!(
  image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/c_pad,w_260,h_260/v1710158551/Comix_trip_material/BG_Livingroom_iptjz9.webp",
  category: "background",
  name: "Living Room"
)
bg_gymnasium = Element.create!(
  image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/c_pad,w_260,h_260/v1710158550/Comix_trip_material/BG_Gymnasium_c1x2su.webp",
  category: "background",
  name: "Gymnasium"
)
bg_campfire = Element.create!(
  image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/c_pad,w_260,h_260/v1710158550/Comix_trip_material/BG_Campfire_xmjjii.webp",
  category: "background",
  name: "Camp Fire"
)
bg_lewagon = Element.create!(
  image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/c_pad,w_260,h_260/v1710493284/DALL_E_2024-03-14_12.48.46_-_Craft_an_image_in_the_same_illustrative_style_as_the_previous_backgrounds_featuring_a_scene_with_a_red_vehicle_resembling_a_Volkswagen_camper_van._Ar_yqcqba.webp",
  category: "background",
  name: "Le Wagon"
)
bg_airport = Element.create!(
  image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/c_pad,w_260,h_260/v1710330263/bg_airport_ou3cb8.webp",
  category: "background",
  name: "Airport"
)
bg_car = Element.create!(
  image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/c_pad,w_260,h_260/v1710330263/bg_car_r4nf5d.webp",
  category: "background",
  name: "Car"
)


  # CHARACTER #1 ELEMENTS:

  ch_fritz_left_element = Element.create!(
    image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/v1710331321/ch_fritz_element_g3so1m.png",
    category: "character",
    name: "Fritz left"
  )
  ch_fritzette_left_element = Element.create!(
    image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/v1710330161/ch_fritzette_element_k8tesm.png",
    category: "character",
    name: "Fritzette left"
  )
  ch_lewagon_teacher_element = Element.create!(
    image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/v1710493807/ch_LW_teacher_vpjegy.png",
    category: "character",
    name: "Le Wagon Teacher"
  )
  ch_fritzette_right_element = Element.create!(
    image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/v1710334358/Fritzette_right_element.png.png",
    category: "character",
    name: "Fritzette right"
  )

  # CHARACTER #2 ELEMENTS:
  ch_older_man_teacher = Element.create!(
    image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/c_pad,w_260,h_260/v1710159777/Comix_trip_material/ch_older_man_teacher_ir3zxk.png",
    category: "character",
    name: "Mr. Teacher"
  )
  ch_lewagon_student = Element.create!(
    image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/v1710493136/ch_LW_student_ksvint.png",
    category: "character",
    name: "LW Student"
  )
  ch_woman_teacher = Element.create!(
    image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/c_pad,w_260,h_260/v1710159723/Comix_trip_material/ch_older_woman_teacher_ubjmnv.png",
    category: "character",
    name: "Mrs. Teacher2"
  )
  ch_mother_element = Element.create!(
    image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/v1710330161/ch_mother__element_fdhhdo.png",
    category: "character",
    name: "Mother"
  )
  ch_father_element = Element.create!(
    image_url: "https://res.cloudinary.com/dlmpwvjpw/image/upload/v1710330161/ch_father_element_qevvkn.png",
    category: "character",
    name: "Father"
  )

  # *******

#   comic_trip_1 = ComicTrip.create!(
#     title: "Fritz in the classroom!",
#     category: "Fritz",
#     user: erwan
#   )
#   puts "#{ComicTrip.count} comic trip were added to the database!"

#   vignette1 = Vignette.create!(
#     text01: "Hey!",
#     text02: "Ho!",
#     comic_trip: comic_trip_1
#   )
#   vignette2 = Vignette.create!(
#     text01: "Is anybody there?",
#     text02: "Let's go!",
#     comic_trip: comic_trip_1
#   )
#   vignette3 = Vignette.create!(
#     text01: "YUHUUUUUUUUU",
#     text02: "Ain't it?!",
#     comic_trip: comic_trip_1
#   )
#   puts "#{Vignette.count} vignettes were added to the database!"

# Composition.create!(vignette: vignette1, element: bg_classroom, z_index: 0)
# Composition.create!(vignette: vignette1, element: ch_fritz_left_element, z_index: 1)
# Composition.create!(vignette: vignette1, element: ch_older_woman_teacher, z_index: 1)
# Composition.create!(vignette: vignette2, element: bg_classroom, z_index: 0)
# Composition.create!(vignette: vignette2, element: ch_fritz_left_element, z_index: 1)
# Composition.create!(vignette: vignette2, element: ch_older_woman_teacher, z_index: 1)
# Composition.create!(vignette: vignette3, element: bg_classroom, z_index: 0)
# Composition.create!(vignette: vignette3, element: ch_fritz_left_element, z_index: 1)
# Composition.create!(vignette: vignette3, element: ch_older_woman_teacher, z_index: 1)

# puts "#{comic_trip_1.title} has been created!"

# # *******

# comic_trip_2 = ComicTrip.create!(
#   title: "Fritz does sciences",
#   category: "Fritz",
#   user: erwan
# )
# puts "#{comic_trip_2.title} comic trip was added to the database!"

# vignette4 = Vignette.create!(
#   text01: "",
#   text02: "Because of the sign",
#   comic_trip: comic_trip_2
# )
# vignette5 = Vignette.create!(
#   text01: "Is anybody there?",
#   text02: "Because of the sign",
#   comic_trip: comic_trip_2
# )
# vignette6 = Vignette.create!(
#   text01: "YUHUUUUUUUUU",
#   text02: "Because of the sign",
#   comic_trip: comic_trip_2
# )
# puts "#{Vignette.count} vignettes were added to the database!"

# Composition.create!(vignette: vignette4, element: bg_science_classroom, z_index: 0)
# Composition.create!(vignette: vignette4, element: ch_fritz_left_element, z_index: 1)
# Composition.create!(vignette: vignette4, element: ch_older_man_teacher, z_index: 1)
# Composition.create!(vignette: vignette5, element: bg_science_classroom, z_index: 0)
# Composition.create!(vignette: vignette5, element: ch_fritz_left_element, z_index: 1)
# Composition.create!(vignette: vignette5, element: ch_older_man_teacher, z_index: 1)
# Composition.create!(vignette: vignette6, element: bg_science_classroom, z_index: 0)
# Composition.create!(vignette: vignette6, element: ch_fritz_left_element, z_index: 1)
# Composition.create!(vignette: vignette6, element: ch_older_man_teacher, z_index: 1)

# puts "#{comic_trip_2.title} has been created!"

# # *******

# comic_trip_3 = ComicTrip.create!(
#   title: "Fritz on his way to school",
#   category: "Fritz & Fritzette",
#   user: erwan
# )
# puts "#{comic_trip_3.title} comic trip was added to the database!"

# vignette7 = Vignette.create!(
#   text01: "Why are you late, Jimmy?",
#   text02: "Because of the sign",
#   comic_trip: comic_trip_3
# )
# vignette8 = Vignette.create!(
#   text01: "What sign?",
#   text02: "....",
#   comic_trip: comic_trip_3
# )
# vignette9 = Vignette.create!(
#   text01: "The one that says, School ahead, go slow!",
#   text02: "AHAHAHHAHAHAHAHAHAHHAHAH",
#   comic_trip: comic_trip_3
# )
# puts "#{Vignette.count} vignettes were added to the database!"

# Composition.create!(vignette: vignette7, element: bg_classroom, z_index: 0)
# Composition.create!(vignette: vignette7, element: ch_fritz_left_element, z_index: 1)
# Composition.create!(vignette: vignette7, element: ch_older_woman_teacher, z_index: 1)
# Composition.create!(vignette: vignette8, element: bg_classroom, z_index: 0)
# Composition.create!(vignette: vignette8, element: ch_fritz_left_element, z_index: 1)
# Composition.create!(vignette: vignette8, element: ch_older_woman_teacher, z_index: 1)
# Composition.create!(vignette: vignette9, element: bg_classroom, z_index: 0)
# Composition.create!(vignette: vignette9, element: ch_fritz_left_element, z_index: 1)
# Composition.create!(vignette: vignette9, element: ch_older_woman_teacher, z_index: 1)

# puts "#{comic_trip_3.title} has been created!"

# # *******

# comic_trip_4 = ComicTrip.create!(
#   title: "Fritzette at home",
#   category: "Fritzette",
#   user: erwan
# )
# puts "#{comic_trip_4.title} comic trip was added to the database!"

# vignette10 = Vignette.create!(
#   text01: "Did you hear about the cheese factory that exploded?",
#   text02: "No, what happened?",
#   comic_trip: comic_trip_4
# )
# vignette11 = Vignette.create!(
#   text01: "There was nothing left but de-brie.",
#   text02: "uhuhuh",
#   comic_trip: comic_trip_4
# )
# vignette12 = Vignette.create!(
#   text01: "hihihihihi",
#   text02: "you are so fuc**** hilarious...",
#   comic_trip: comic_trip_4
# )
# puts "#{Vignette.count} vignettes were added to the database!"

# Composition.create!(vignette: vignette10, element: bg_science_classroom, z_index: 0)
# Composition.create!(vignette: vignette10, element: ch_fritz_left_element, z_index: 1)
# Composition.create!(vignette: vignette10, element: ch_older_man_teacher, z_index: 1)
# Composition.create!(vignette: vignette11, element: bg_science_classroom, z_index: 0)
# Composition.create!(vignette: vignette11, element: ch_fritz_left_element, z_index: 1)
# Composition.create!(vignette: vignette11, element: ch_older_man_teacher, z_index: 1)
# Composition.create!(vignette: vignette12, element: bg_science_classroom, z_index: 0)
# Composition.create!(vignette: vignette12, element: ch_fritz_left_element, z_index: 1)
# Composition.create!(vignette: vignette12, element: ch_older_man_teacher, z_index: 1)

# puts "#{comic_trip_4.title} has been created!"

# # *******

# comic_trip_5 = ComicTrip.create!(
#   title: "Fritz moves his body!",
#   category: "Fritz",
#   user: erwan
# )
# puts "#{comic_trip_5.title} comic trip was added to the database!"

# vignette13 = Vignette.create!(
#   text01: "Hey!",
#   text02: "Ho!",
#   comic_trip: comic_trip_5
# )
# vignette14 = Vignette.create!(
#   text01: "Is anybody there?",
#   text02: "Let's go!",
#   comic_trip: comic_trip_5
# )
# vignette15 = Vignette.create!(
#   text01: "YUHUUUUUUUUU",
#   text02: "Ain't it?!",
#   comic_trip: comic_trip_5
# )
# puts "#{Vignette.count} vignettes were added to the database!"

# Composition.create!(vignette: vignette13, element: bg_classroom, z_index: 0)
# Composition.create!(vignette: vignette13, element: ch_fritz_left_element, z_index: 1)
# Composition.create!(vignette: vignette13, element: ch_older_woman_teacher, z_index: 1)
# Composition.create!(vignette: vignette14, element: bg_classroom, z_index: 0)
# Composition.create!(vignette: vignette14, element: ch_fritz_left_element, z_index: 1)
# Composition.create!(vignette: vignette14, element: ch_older_woman_teacher, z_index: 1)
# Composition.create!(vignette: vignette15, element: bg_classroom, z_index: 0)
# Composition.create!(vignette: vignette15, element: ch_fritz_left_element, z_index: 1)
# Composition.create!(vignette: vignette15, element: ch_older_woman_teacher, z_index: 1)

# puts "#{comic_trip_5.title} has been created!"

# # *******

# comic_trip_6 = ComicTrip.create!(
#   title: "Fritz and Fritzette are scouting",
#   category: "Fritz & Fritzette",
#   user: erwan
# )
# puts "#{comic_trip_6.title} comic trip was added to the database!"

# vignette16 = Vignette.create!(
#   text01: "Hey!",
#   text02: "Ho!",
#   comic_trip: comic_trip_6
# )
# vignette17 = Vignette.create!(
#   text01: "Is anybody there?",
#   text02: "Let's go!",
#   comic_trip: comic_trip_6
# )
# vignette18 = Vignette.create!(
#   text01: "YUHUUUUUUUUU",
#   text02: "Ain't it?!",
#   comic_trip: comic_trip_6
# )
# puts "#{Vignette.count} vignettes were added to the database!"

# Composition.create!(vignette: vignette16, element: bg_science_classroom, z_index: 0)
# Composition.create!(vignette: vignette16, element: ch_fritz_left_element, z_index: 1)
# Composition.create!(vignette: vignette16, element: ch_older_man_teacher, z_index: 1)
# Composition.create!(vignette: vignette17, element: bg_science_classroom, z_index: 0)
# Composition.create!(vignette: vignette17, element: ch_fritz_left_element, z_index: 1)
# Composition.create!(vignette: vignette17, element: ch_older_man_teacher, z_index: 1)
# Composition.create!(vignette: vignette18, element: bg_science_classroom, z_index: 0)
# Composition.create!(vignette: vignette18, element: ch_fritz_left_element, z_index: 1)
# Composition.create!(vignette: vignette18, element: ch_older_man_teacher, z_index: 1)

# puts "#{comic_trip_6.title} has been created!"

# # *******

# comic_trip_7 = ComicTrip.create!(
#   title: "Fritzette cleans her room",
#   category: "Fritzette",
#   user: erwan
# )
# puts "#{comic_trip_7.title} comic trip was added to the database!"

# vignette19 = Vignette.create!(
#   text01: "Hey!",
#   text02: "Ho!",
#   comic_trip: comic_trip_7
# )
# vignette20 = Vignette.create!(
#   text01: "Is anybody there?",
#   text02: "Let's go!",
#   comic_trip: comic_trip_7
# )
# vignette21 = Vignette.create!(
#   text01: "YUHUUUUUUUUU",
#   text02: "Ain't it?!",
#   comic_trip: comic_trip_7
# )
# puts "#{Vignette.count} vignettes were was to the database!"

# Composition.create!(vignette: vignette19, element: bg_classroom, z_index: 0)
# Composition.create!(vignette: vignette19, element: ch_fritz_left_element, z_index: 1)
# Composition.create!(vignette: vignette19, element: ch_older_woman_teacher, z_index: 1)
# Composition.create!(vignette: vignette20, element: bg_classroom, z_index: 0)
# Composition.create!(vignette: vignette20, element: ch_fritz_left_element, z_index: 1)
# Composition.create!(vignette: vignette20, element: ch_older_woman_teacher, z_index: 1)
# Composition.create!(vignette: vignette21, element: bg_classroom, z_index: 0)
# Composition.create!(vignette: vignette21, element: ch_fritz_left_element, z_index: 1)
# Composition.create!(vignette: vignette21, element: ch_older_woman_teacher, z_index: 1)

# puts "#{comic_trip_7.title} has been created!"
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?