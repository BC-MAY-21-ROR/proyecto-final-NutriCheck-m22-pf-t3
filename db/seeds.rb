# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Speciality.create(name: 'administrator')
Speciality.create(name: 'nutriologist')
User.create(name: 'Carlos', last_name: 'Salgado', birth_date: '1985-05-20', phone: '+56975654656',
            email: 'carlos.salgado@gmail.com', password: '123456789', role: 'administrator', speciality_id: 1)
User.create(name: 'Marcelo', last_name: 'Delgado', birth_date: '1995-07-12', phone: '+56975666744',
            email: 'marcelo.delgado@gmail.com', password: '123456789', role: 'nutriologist', speciality_id: 2)
User.create(name: 'Daniel', last_name: 'Gonzalez', birth_date: '2000-01-20', phone: '+56975456787',
            email: 'daniel.gonzalez@gmail.com', password: '123456789', role: 'administrator', speciality_id: 1)
