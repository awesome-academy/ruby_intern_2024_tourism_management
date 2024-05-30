all_tour = TourType.create(type_name: "All Tour", ancestry: nil)

beach_tour = TourType.create(type_name: "Beach Tour", ancestry: all_tour.id)
mountain_tour = TourType.create(type_name: "Mountain Tour", ancestry: all_tour.id)

TourType.create(type_name: "North Beach", ancestry: beach_tour.id)
TourType.create(type_name: "South Beach", ancestry: beach_tour.id)
TourType.create(type_name: "Lowland Mountain", ancestry: mountain_tour.id)
TourType.create(type_name: "Highland Mountain", ancestry: mountain_tour.id)


30.times do |n|
	tour_name = Faker::Australia.state
	city = Faker::Address.city
	tour_destination = Faker::Address.full_address
	description = Faker::Lorem.paragraph(sentence_count: 2)
	price = Faker::Number.decimal(l_digits: 3, r_digits: 3)
	day_duration = Faker::Number.within(range: 1..29)
	start_date = Faker::Date.between(from: '2024-09-23', to: '2025-09-23')
	end_date = start_date + day_duration.days
	tour_type_id = Faker::Number.within(range: 3..6)
	Tour.create!(tour_name:, city:, tour_destination:, description:, price:, day_duration:, start_date:, end_date:, tour_type_id:)
end

User.create!(role: 1, first_name:"Admin", last_name:"Trinh",
            email:"admin@railstutorial.org", phone:"083504567", address:"HCM",
            date_of_birth: "2003-01-01",
            password: "123456",
            password_confirmation:"123456",
            activated: true,
            activated_at: Time.zone.now)

User.create!(role: 0, first_name:"User", last_name:"Trinh",
            email:"User@railstutorial.org", phone:"083504567", address:"HN",
            date_of_birth: "2003-01-01",
            password: "123456",
            password_confirmation:"123456",
            activated: true,
            activated_at: Time.zone.now)
