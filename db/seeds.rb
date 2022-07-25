# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Speciality.create(name: 'administrator')
# Speciality.create(name: 'nutriologist')
# User.create(name: 'Carlos', last_name: 'Salgado', birth_date: '1985-05-20', phone: '+56975654656',
#             email: 'carlos.salgado@gmail.com', password: '123456789', role: 'administrator', speciality_id: 1)
# User.create(name: 'Marcelo', last_name: 'Delgado', birth_date: '1995-07-12', phone: '+56975666744',
#             email: 'marcelo.delgado@gmail.com', password: '123456789', role: 'nutriologist', speciality_id: 2)
# User.create(name: 'Daniel', last_name: 'Gonzalez', birth_date: '2000-01-20', phone: '+56975456787',
#             email: 'daniel.gonzalez@gmail.com', password: '123456789', role: 'administrator', speciality_id: 1)




5.times do 
  Slot.create(start_time: "2022-07-25 09:00:00 UTC")
  Slot.create(start_time: "2022-07-25 10:00:00 UTC")
  Slot.create(start_time: "2022-07-25 11:00:00 UTC")
  Slot.create(start_time: "2022-07-25 12:00:00 UTC")
  Slot.create(start_time: "2022-07-25 13:00:00 UTC")
  Slot.create(start_time: "2022-07-25 14:00:00 UTC")
  Slot.create(start_time: "2022-07-25 15:00:00 UTC")
  Slot.create(start_time: "2022-07-25 16:00:00 UTC")
  Slot.create(start_time: "2022-07-25 17:00:00 UTC")
end

5.times do 
  Slot.create(start_time: "2022-07-26 09:00:00 UTC")
  Slot.create(start_time: "2022-07-26 10:00:00 UTC")
  Slot.create(start_time: "2022-07-26 11:00:00 UTC")
  Slot.create(start_time: "2022-07-26 12:00:00 UTC")
  Slot.create(start_time: "2022-07-26 13:00:00 UTC")
  Slot.create(start_time: "2022-07-26 14:00:00 UTC")
  Slot.create(start_time: "2022-07-26 15:00:00 UTC")
  Slot.create(start_time: "2022-07-26 16:00:00 UTC")
  Slot.create(start_time: "2022-07-26 17:00:00 UTC")
end

5.times do 
  Slot.create(start_time: "2022-07-27 09:00:00 UTC")
  Slot.create(start_time: "2022-07-27 10:00:00 UTC")
  Slot.create(start_time: "2022-07-27 11:00:00 UTC")
  Slot.create(start_time: "2022-07-27 12:00:00 UTC")
  Slot.create(start_time: "2022-07-27 13:00:00 UTC")
  Slot.create(start_time: "2022-07-27 14:00:00 UTC")
  Slot.create(start_time: "2022-07-27 15:00:00 UTC")
  Slot.create(start_time: "2022-07-27 16:00:00 UTC")
  Slot.create(start_time: "2022-07-27 17:00:00 UTC")
end

5.times do 
  Slot.create(start_time: "2022-07-28 09:00:00 UTC")
  Slot.create(start_time: "2022-07-28 10:00:00 UTC")
  Slot.create(start_time: "2022-07-28 11:00:00 UTC")
  Slot.create(start_time: "2022-07-28 12:00:00 UTC")
  Slot.create(start_time: "2022-07-28 13:00:00 UTC")
  Slot.create(start_time: "2022-07-28 14:00:00 UTC")
  Slot.create(start_time: "2022-07-28 15:00:00 UTC")
  Slot.create(start_time: "2022-07-28 16:00:00 UTC")
  Slot.create(start_time: "2022-07-28 17:00:00 UTC")
end

5.times do 
  Slot.create(start_time: "2022-07-29 09:00:00 UTC")
  Slot.create(start_time: "2022-07-29 10:00:00 UTC")
  Slot.create(start_time: "2022-07-29 11:00:00 UTC")
  Slot.create(start_time: "2022-07-29 12:00:00 UTC")
  Slot.create(start_time: "2022-07-29 13:00:00 UTC")
  Slot.create(start_time: "2022-07-29 14:00:00 UTC")
  Slot.create(start_time: "2022-07-29 15:00:00 UTC")
  Slot.create(start_time: "2022-07-29 16:00:00 UTC")
  Slot.create(start_time: "2022-07-29 17:00:00 UTC")
end

5.times do 
  Slot.create(start_time: "2022-07-30 09:00:00 UTC")
  Slot.create(start_time: "2022-07-30 10:00:00 UTC")
  Slot.create(start_time: "2022-07-30 11:00:00 UTC")
  Slot.create(start_time: "2022-07-30 12:00:00 UTC")
  Slot.create(start_time: "2022-07-30 13:00:00 UTC")
  Slot.create(start_time: "2022-07-30 14:00:00 UTC")
  Slot.create(start_time: "2022-07-30 15:00:00 UTC")
  Slot.create(start_time: "2022-07-30 16:00:00 UTC")
  Slot.create(start_time: "2022-07-30 17:00:00 UTC")
end
# 5.times do Slot.create(start_time: "2022-07-22 10:00:00 UTC") end
# 5.times do Slot.create(start_time: "2022-07-22 11:00:00 UTC") end
# 5.times do Slot.create(start_time: "2022-07-22 12:00:00 UTC") end
# 5.times do Slot.create(start_time: "2022-07-22 13:00:00 UTC") end
# 5.times do Slot.create(start_time: "2022-07-22 14:00:00 UTC") end
# 5.times do Slot.create(start_time: "2022-07-22 15:00:00 UTC") end
# 5.times do Slot.create(start_time: "2022-07-22 16:00:00 UTC") end
# 5.times do Slot.create(start_time: "2022-07-22 17:00:00 UTC") end