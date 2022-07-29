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



# i = 9
# while i < 18
#   Slot.create(service: "3", professional: "34", start_time: "2022-07-25 #{i}:00:00 UTC", status: 'not available')
#   Slot.create(service: "5", professional: "17", start_time: "2022-07-25 #{i}:00:00 UTC", status: 'not available')
#   Slot.create(service: "1", professional: "25", start_time: "2022-07-25 #{i}:00:00 UTC", status: 'not available')
#   Slot.create(service: "2", professional: "4", start_time: "2022-07-25 #{i}:00:00 UTC", status: 'not available')
#   Slot.create(service: "4", professional: "27", start_time: "2022-07-25 #{i}:00:00 UTC", status: 'not available')
#   i+=1
# end
# i = 9
# while i < 18
#   Slot.create(service: "3", professional: "34", start_time: "2022-07-26 #{i}:00:00 UTC", status: 'not available')
#   Slot.create(service: "5", professional: "17", start_time: "2022-07-26 #{i}:00:00 UTC", status: 'not available')
#   Slot.create(service: "1", professional: "25", start_time: "2022-07-26 #{i}:00:00 UTC", status: 'not available')
#   Slot.create(service: "2", professional: "4", start_time: "2022-07-26 #{i}:00:00 UTC", status: 'not available')
#   Slot.create(service: "4", professional: "27", start_time: "2022-07-26 #{i}:00:00 UTC", status: 'not available')
#   i+=1
# end
# i = 9
# while i < 18
#   Slot.create(service: "3", professional: "34", start_time: "2022-07-27 #{i}:00:00 UTC", status: 'not available')
#   Slot.create(service: "5", professional: "17", start_time: "2022-07-27 #{i}:00:00 UTC", status: 'not available')
#   Slot.create(service: "1", professional: "25", start_time: "2022-07-27 #{i}:00:00 UTC", status: 'not available')
#   Slot.create(service: "2", professional: "4", start_time: "2022-07-27 #{i}:00:00 UTC", status: 'not available')
#   Slot.create(service: "4", professional: "27", start_time: "2022-07-27 #{i}:00:00 UTC", status: 'not available')
#   i+=1
# end
# i = 9

# while i < 18
#   Slot.create(service: "3", professional: "34", start_time: "2022-07-28 #{i}:00:00 UTC", status: 'not available')
#   Slot.create(service: "5", professional: "17", start_time: "2022-07-28 #{i}:00:00 UTC", status: 'not available')
#   Slot.create(service: "1", professional: "25", start_time: "2022-07-28 #{i}:00:00 UTC", status: 'not available')
#   Slot.create(service: "2", professional: "4", start_time: "2022-07-28 #{i}:00:00 UTC", status: 'not available')
#   Slot.create(service: "4", professional: "27", start_time: "2022-07-28 #{i}:00:00 UTC", status: 'not available')
#   i+=1
# end
# i = 9

# while i < 18
#   Slot.create(service: "3", professional: "34", start_time: "2022-07-29 #{i}:00:00 UTC", status: 'not available')
#   Slot.create(service: "5", professional: "17", start_time: "2022-07-29 #{i}:00:00 UTC", status: 'not available')
#   Slot.create(service: "1", professional: "25", start_time: "2022-07-29 #{i}:00:00 UTC", status: 'not available')
#   Slot.create(service: "2", professional: "4", start_time: "2022-07-29 #{i}:00:00 UTC", status: 'not available')
#   Slot.create(service: "4", professional: "27", start_time: "2022-07-29 #{i}:00:00 UTC", status: 'not available')
#   i+=1
# end
# i = 9

# while i < 18
#   Slot.create(service: "3", professional: "34", start_time: "2022-07-30 #{i}:00:00 UTC", status: 'not available')
#   Slot.create(service: "5", professional: "17", start_time: "2022-07-30 #{i}:00:00 UTC", status: 'not available')
#   Slot.create(service: "1", professional: "25", start_time: "2022-07-30 #{i}:00:00 UTC", status: 'not available')
#   Slot.create(service: "2", professional: "4", start_time: "2022-07-30 #{i}:00:00 UTC", status: 'not available')
#   Slot.create(service: "4", professional: "27", start_time: "2022-07-30 #{i}:00:00 UTC", status: 'not available')
#   i+=1
# end


#   Slot.create(service: 3, professional: 34, start_time: "2022-07-25 10:00:00 UTC", status: 'not available')
#   Slot.create(service: 3, professional: 34, start_time: "2022-07-25 11:00:00 UTC", status: 'not available')
#   Slot.create(service: 3, professional: 34, start_time: "2022-07-25 12:00:00 UTC", status: 'not available')
#   Slot.create(service: 3, professional: 34, start_time: "2022-07-25 13:00:00 UTC", status: 'not available')
#   Slot.create(service: 3, professional: 34, start_time: "2022-07-25 14:00:00 UTC", status: 'not available')
#   Slot.create(service: 3, professional: 34, start_time: "2022-07-25 15:00:00 UTC", status: 'not available')
#   Slot.create(service: 3, professional: 34, start_time: "2022-07-25 16:00:00 UTC", status: 'not available')
#   Slot.create(service: 3, professional: 34, start_time: "2022-07-25 17:00:00 UTC", status: 'not available')


# 5.times do 
#   Slot.create(start_time: "2022-08-01 09:00:00 UTC")
#   Slot.create(start_time: "2022-08-01 10:00:00 UTC")
#   Slot.create(start_time: "2022-08-01 11:00:00 UTC")
#   Slot.create(start_time: "2022-08-01 12:00:00 UTC")
#   Slot.create(start_time: "2022-08-01 13:00:00 UTC")
#   Slot.create(start_time: "2022-08-01 14:00:00 UTC")
#   Slot.create(start_time: "2022-08-01 15:00:00 UTC")
#   Slot.create(start_time: "2022-08-01 16:00:00 UTC")
#   Slot.create(start_time: "2022-08-01 17:00:00 UTC")
# end

# 5.times do 
#   Slot.create(start_time: "2022-08-02 09:00:00 UTC")
#   Slot.create(start_time: "2022-08-02 10:00:00 UTC")
#   Slot.create(start_time: "2022-08-02 11:00:00 UTC")
#   Slot.create(start_time: "2022-08-02 12:00:00 UTC")
#   Slot.create(start_time: "2022-08-02 13:00:00 UTC")
#   Slot.create(start_time: "2022-08-02 14:00:00 UTC")
#   Slot.create(start_time: "2022-08-02 15:00:00 UTC")
#   Slot.create(start_time: "2022-08-02 16:00:00 UTC")
#   Slot.create(start_time: "2022-08-02 17:00:00 UTC")
# end

# 5.times do 
#   Slot.create(start_time: "2022-08-03 09:00:00 UTC")
#   Slot.create(start_time: "2022-08-03 10:00:00 UTC")
#   Slot.create(start_time: "2022-08-03 11:00:00 UTC")
#   Slot.create(start_time: "2022-08-03 12:00:00 UTC")
#   Slot.create(start_time: "2022-08-03 13:00:00 UTC")
#   Slot.create(start_time: "2022-08-03 14:00:00 UTC")
#   Slot.create(start_time: "2022-08-03 15:00:00 UTC")
#   Slot.create(start_time: "2022-08-03 16:00:00 UTC")
#   Slot.create(start_time: "2022-08-03 17:00:00 UTC")
# end

# 5.times do 
#   Slot.create(start_time: "2022-08-04 09:00:00 UTC")
#   Slot.create(start_time: "2022-08-04 10:00:00 UTC")
#   Slot.create(start_time: "2022-08-04 11:00:00 UTC")
#   Slot.create(start_time: "2022-08-04 12:00:00 UTC")
#   Slot.create(start_time: "2022-08-04 13:00:00 UTC")
#   Slot.create(start_time: "2022-08-04 14:00:00 UTC")
#   Slot.create(start_time: "2022-08-04 15:00:00 UTC")
#   Slot.create(start_time: "2022-08-04 16:00:00 UTC")
#   Slot.create(start_time: "2022-08-04 17:00:00 UTC")
# end

# 5.times do 
#   Slot.create(start_time: "2022-08-05 09:00:00 UTC")
#   Slot.create(start_time: "2022-08-05 10:00:00 UTC")
#   Slot.create(start_time: "2022-08-05 11:00:00 UTC")
#   Slot.create(start_time: "2022-08-05 12:00:00 UTC")
#   Slot.create(start_time: "2022-08-05 13:00:00 UTC")
#   Slot.create(start_time: "2022-08-05 14:00:00 UTC")
#   Slot.create(start_time: "2022-08-05 15:00:00 UTC")
#   Slot.create(start_time: "2022-08-05 16:00:00 UTC")
#   Slot.create(start_time: "2022-08-05 17:00:00 UTC")
# end

# 5.times do 
#   Slot.create(start_time: "2022-08-06 09:00:00 UTC")
#   Slot.create(start_time: "2022-08-06 10:00:00 UTC")
#   Slot.create(start_time: "2022-08-06 11:00:00 UTC")
#   Slot.create(start_time: "2022-08-06 12:00:00 UTC")
#   Slot.create(start_time: "2022-08-06 13:00:00 UTC")
#   Slot.create(start_time: "2022-08-06 14:00:00 UTC")
#   Slot.create(start_time: "2022-08-06 15:00:00 UTC")
#   Slot.create(start_time: "2022-08-06 16:00:00 UTC")
#   Slot.create(start_time: "2022-08-06 17:00:00 UTC")
# end


@first_name_man = %w[Pedro Evaristo Melquiades Ronny John Maximiliano Joaquín Matías Martín José Luciano Jorge Miguel Carlos Facundo Julián Gabriel Máximo Jose Juan Luis Francisco Jesus]
@second_name_man = %w[Mateo Agustín Santiago Tomás Benjamín Lucas Gaspar Mario Geronimo Ernesto Martin Giorgio Ricardo Fernando Javier Sergio Roberto Manuel Victor Antonio Alejandro Alonso Vicente]
@last_name = %w[Hernandez Garcia Martinez Lopez Gonzalez Perez Rodriguez Sanchez Ramirez Cruz Flores Gomez Morales Vazquez Reyes]
@second_last_name = %w[Jimenez Torres Diaz Gutierrez Ruiz Mendoza Aguilar Ortiz Moreno Castillo Romero Alvarez Mendez Chavez Rivera]
@i = 10000
while(@i <= 10500) do 
  first_name = @first_name_man[rand(19)]
  second_name = @second_name_man[rand(19)]
  last_name = @last_name[rand(15)]
  second_last_name = @second_last_name[rand(15)]
  Patient.create( id: @i,
                  name: first_name,
                  second_name: second_name,
                  last_name: last_name, 
                  second_last_name: second_last_name,
                  birth_date: "#{rand(1962..2015)}-#{rand(1..13)}-#{rand(1..29)} 17:00:00 UTC", 
                  phone: "#{rand(900000000..999999999)}", 
                  email: "#{first_name}.#{last_name}.#{second_last_name}@gmail.com",
                  password: "123456", 
                  height: rand(110..200).to_f, observations: "Creation Patient")
  @i+=1
end


# @first_name_woman = %w[Catalina Enriqueta Marlene Siomara Nariana Denisse Patricia Pilar Geovana Olivia Marta Roxana Sonia Agustina Emilia Isidora Florencia Luciana Salomé Isabella Mariana Gabriela Emily]
# @second_name_woman = %w[Danna Mía Domenica Elizabeth Beatriz Ramona Liz Ariana Briana María Julieta Martina Emma Camila Sofía Valentina Victoria Maria Ana Rosa Juana Mar Guadalupe]
# @i = 601
# while(@i <= 700) do 
#   first_name = @first_name_woman[rand(19)]
#   second_name = @second_name_woman[rand(19)]
#   last_name = @last_name[rand(15)]
#   second_last_name = @second_last_name[rand(15)]
#   Patient.create( id: @i,
#                   name: first_name,
#                   second_name: second_name,
#                   last_name: last_name, 
#                   second_last_name: second_last_name,
#                   birth_date: "#{rand(1962..2015)}-#{rand(1..13)}-#{rand(1..29)} 17:00:00 UTC", 
#                   phone: "#{rand(900000000..999999999)}", 
#                   email: "#{first_name}.#{last_name}.#{second_last_name}@gmail.com",
#                   password: "123456", 
#                   height: rand(110..200).to_f, observations: "Creation Patient")
#   @i+=1
# end

