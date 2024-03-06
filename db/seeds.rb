puts "db Comics is dead"
ComicTrip.destroy_all
puts "db User is dead"
User.destroy_all
puts "Creating the db with user seeds..."
User.create!(first_name: "Erwan",last_name: "Ruaud", nickname: "Rookmoot", email: "erwanruaud@mail.com", password: "1234456", avatar:"https://avatars.githubusercontent.com/u/149379418?v=4")
User.create(first_name: "Romain",last_name: "Bruzeau", nickname: "Carapoule", email: "romainbruzeau@mail.com", password: "1234456", avatar:"https://avatars.githubusercontent.com/u/36406518?v=4")
User.create(first_name: "Kalek", last_name: "Chahed", nickname: "Pafleuch", email: "kalekchacha@mail.com", password: "1234456", avatar:"https://avatars.githubusercontent.com/u/155948767?v=4")
puts "#{User.count} comics in database"
puts "Finished!"
puts "Creating the db with element seeds..."
Element.create!(image_url:"https://res.cloudinary.com/dlmpwvjpw/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1709731493/Classroom1.webp", category: "Fritz at school")
Element.create!(image_url:"https://res.cloudinary.com/dlmpwvjpw/image/upload/v1709731422/Fritz_front_left.png", category:"Fritz at school")
Element.create!(image_url:"https://res.cloudinary.com/dlmpwvjpw/image/upload/v1709731428/Teacher_front_right.png", category:"Fritz at school")
puts "#{Element.count} element were added to the database!"
