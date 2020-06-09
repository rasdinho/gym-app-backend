# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Coach.destroy_all
Review.destroy_all
Session.destroy_all
Registration.destroy_all



c1 = Coach.create(name: "Junior Cruz", img: "https://i.pinimg.com/originals/04/72/ca/0472cae3ad624ff764692d7c3be455e8.jpg", specialty: "Bodybuilding", bio: "NOT JUST TRAINING I AM ALSO A FITNESS THEORIST WRITING BOOKS ABOUT FOOD AND WORKOUTS")
c2 = Coach.create(name: "Dawit Gizaw", img: "https://i.ya-webdesign.com/images/fitness-trainer-png-4.png", specialty: "Fitness", bio: "Just do it kjdsfkashfkjahsflkashflkashflkajsdfhalkjfhaskjfhaskjfahfkjahd")
c3 = Coach.create(name: "Carla Sahagun", img: "https://i.ya-webdesign.com/images/muscle-girl-png-2.png", specialty: "Yoga", bio: "LET’S GET MOVING I REALLY KNOW HOW TO PUSH MY CLIENTS TO LOOK AND FEEL AMAZING! dfsfasfkasjfhakjsdfhkasfh")
c4 = Coach.create(name: "Beza Sirak", img: "https://i.ya-webdesign.com/images/female-arm-muscle-png-6.png", specialty: "Swimming", bio: "Teaching water safety in the gym just got easier.sdfkabfkjasbfjasbfmasbfamnsfbajfa")
c5 = Coach.create(name: "Mark Doritos", img: "https://www.pngkit.com/png/full/655-6556182_crossfit.png", specialty: "CrossFit", bio: "COACHING PROGRAMS EVEN A BEGINNER IN CROSSFIT CAN BENEFIT FROM MY WORKOUT PROGRAMS.sdfadfasfasfafa")

u1 = User.create(name: "Alex Didio", email: "alex.didio@gmail.com", password_digest: BCrypt::Password.create('password'), img: "https://pngimg.com/uploads/man/man_PNG6531.png")
u2 = User.create(name: "Anniya Rika", email: "aniiya.rika@gmail.com", password_digest: BCrypt::Password.create('password'), img: "https://pngimg.com/uploads/girls/girls_PNG6481.png")
u3 = User.create(name: "Sarah Smith", email: "sarah.smith@gmail.com", password_digest: BCrypt::Password.create('password'), img: "https://pngimg.com/uploads/girls/girls_PNG6466.png")


s1 = Session.create(title: "Yoga", date_time: DateTime.new(2020,11,19,8,37), img: "https://images.squarespace-cdn.com/content/v1/599efce9ff7c50af933a91c7/1529087408611-Q5WHXDR41IVYSJO7ZV03/ke17ZwdGBToddI8pDm48kM-aw22U0LHZx6qf2ef5PkhZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpxRug9GfYMEIAzXK-6wwZCdB3yvAQZhtQErvIj8lKPzGgCROaeqpmMCtcnEEFIDXd4/yoga+pose.png", duration: "1h 30min", coach_id: c3.id)
s2 = Session.create(title: "Bodybuilding", date_time: DateTime.new(2020,11,20,5,37), img: "https://c4.wallpaperflare.com/wallpaper/894/720/1015/woman-man-workout-fitness-wallpaper-preview.jpg", duration: "1h", coach_id: c1.id)
s3 = Session.create(title: "Fitness", date_time: DateTime.new(2020,11,21,3,37), img: "https://pluspng.com/img-png/png-fitness-fitness-png-image-645.png", duration: "1h", coach_id: c2.id)


regi1 = Registration.create(user_id: u1.id, session_id: s1.id) #t4.id
regi2 = Registration.create(user_id: u2.id, session_id: s2.id)
regi3 = Registration.create(user_id: u3.id, session_id: s3.id)


r1 = Review.create(content: "this class was amazing", rating: 10, user_id: u1.id, coach_id: c3.id)
r2 = Review.create(content: "defenitaly doing it again", rating: 9, user_id: u2.id, coach_id: c1.id)
r3 = Review.create(content: "thanks for the environment", rating: 9, user_id: u3.id, coach_id: c5.id)


