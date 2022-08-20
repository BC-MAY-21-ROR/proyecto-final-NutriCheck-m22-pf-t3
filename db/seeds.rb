# # frozen_string_literal: true

Speciality.create(name: 'Administrator')
Speciality.create(name: 'Manager')
Speciality.create(name: 'Therapist')
Speciality.create(name: 'Massagist')
Speciality.create(name: 'Nutritionist')

User.create(name: 'Carlos', last_name: 'Perez', birth_date: '1985-01-24', phone: '3121457851',
            email: 'carlos@gmail.com', password: '123456789', role: 'administrator', speciality_id: 1)
User.create(name: 'Henry', last_name: 'Jimenez', birth_date: '1986-05-06', phone: '3122154782',
            email: 'henry@gmail.com', password: '12345678', role: 'professional', speciality_id: 3)
User.create(name: 'Oliver', last_name: 'Cardenas', birth_date: '1987-02-18', phone: '3123154873',
            email: 'oliver@gmail.com', password: '12345678', role: 'professional', speciality_id: 4)
User.create(name: 'Ximena', last_name: 'Pizano', birth_date: '1988-05-20', phone: '3124155624',
            email: 'ximena@gmail.com', password: '12345678', role: 'professional', speciality_id: 5)
User.create(name: 'Alejandra', last_name: 'Garcia', birth_date: '1989-06-13', phone: '3125762555',
            email: 'alejandra@gmail.com', password: '12345678', role: 'professional', speciality_id: 5)
User.create(name: 'Axel', last_name: 'Lisboa', birth_date: '1990-10-01', phone: '3126788216',
            email: 'axel@gmail.com', password: '1234567', role: 'manager', speciality_id: 2)
User.create(name: 'Andrea', last_name: 'Lisboa', birth_date: '1990-10-01', phone: '3127152057',
            email: 'andrea@gmail.com', password: '1234567', role: 'manager', speciality_id: 2)

License.create(name: 'HJT', number: '12et84f6w', user_id: 2)
License.create(name: 'OCM', number: '23sd46u4x', user_id: 3)
License.create(name: 'XPN', number: '34ap28f5f', user_id: 4)
License.create(name: 'AGN', number: '45vb92m1k', user_id: 5)

Schedule.create(week_day: 'Monday',    opening_time: '07:00:00', closing_time: '08:00:00')
Schedule.create(week_day: 'Monday',    opening_time: '08:00:00', closing_time: '09:00:00')
Schedule.create(week_day: 'Monday',    opening_time: '09:00:00', closing_time: '10:00:00')
Schedule.create(week_day: 'Monday',    opening_time: '10:00:00', closing_time: '11:00:00')
Schedule.create(week_day: 'Monday',    opening_time: '12:00:00', closing_time: '13:00:00')
Schedule.create(week_day: 'Monday',    opening_time: '13:00:00', closing_time: '14:00:00')
Schedule.create(week_day: 'Monday',    opening_time: '14:00:00', closing_time: '15:00:00')
Schedule.create(week_day: 'Tuesday',   opening_time: '07:00:00', closing_time: '08:00:00')
Schedule.create(week_day: 'Tuesday',   opening_time: '08:00:00', closing_time: '09:00:00')
Schedule.create(week_day: 'Tuesday',   opening_time: '09:00:00', closing_time: '10:00:00')
Schedule.create(week_day: 'Tuesday',   opening_time: '14:00:00', closing_time: '15:00:00')
Schedule.create(week_day: 'Wednesday', opening_time: '07:00:00', closing_time: '08:00:00')
Schedule.create(week_day: 'Wednesday', opening_time: '13:00:00', closing_time: '14:00:00')
Schedule.create(week_day: 'Wednesday', opening_time: '14:00:00', closing_time: '15:00:00')
Schedule.create(week_day: 'Thursday',  opening_time: '07:00:00', closing_time: '08:00:00')
Schedule.create(week_day: 'Thursday',  opening_time: '08:00:00', closing_time: '09:00:00')
Schedule.create(week_day: 'Thursday',  opening_time: '12:00:00', closing_time: '13:00:00')
Schedule.create(week_day: 'Thursday',  opening_time: '13:00:00', closing_time: '14:00:00')
Schedule.create(week_day: 'Thursday',  opening_time: '14:00:00', closing_time: '15:00:00')
Schedule.create(week_day: 'Friday',    opening_time: '07:00:00', closing_time: '08:00:00')
Schedule.create(week_day: 'Friday',    opening_time: '08:00:00', closing_time: '09:00:00')
Schedule.create(week_day: 'Friday',    opening_time: '09:00:00', closing_time: '10:00:00')
Schedule.create(week_day: 'Friday',    opening_time: '13:00:00', closing_time: '14:00:00')

# Manager turns
Turn.create(schedule_id: 1,  user_id: 6)
Turn.create(schedule_id: 2,  user_id: 6)
Turn.create(schedule_id: 3,  user_id: 7)
Turn.create(schedule_id: 4,  user_id: 7)
Turn.create(schedule_id: 5,  user_id: 6)
Turn.create(schedule_id: 6,  user_id: 6)
Turn.create(schedule_id: 7,  user_id: 7)
Turn.create(schedule_id: 8,  user_id: 7)
Turn.create(schedule_id: 9,  user_id: 7)
Turn.create(schedule_id: 10, user_id: 7)
Turn.create(schedule_id: 11, user_id: 7)
Turn.create(schedule_id: 12, user_id: 6)
Turn.create(schedule_id: 13, user_id: 6)
Turn.create(schedule_id: 14, user_id: 6)
Turn.create(schedule_id: 15, user_id: 7)
Turn.create(schedule_id: 16, user_id: 7)
Turn.create(schedule_id: 17, user_id: 6)
Turn.create(schedule_id: 18, user_id: 6)
Turn.create(schedule_id: 19, user_id: 6)
Turn.create(schedule_id: 20, user_id: 7)
Turn.create(schedule_id: 21, user_id: 7)
Turn.create(schedule_id: 22, user_id: 7)
Turn.create(schedule_id: 23, user_id: 6)
# Professionals id 2 turns
Turn.create(schedule_id: 1,  user_id: 2)
Turn.create(schedule_id: 2,  user_id: 2)
Turn.create(schedule_id: 6,  user_id: 2)
Turn.create(schedule_id: 7,  user_id: 2)
Turn.create(schedule_id: 11, user_id: 2)
Turn.create(schedule_id: 12, user_id: 2)
Turn.create(schedule_id: 23, user_id: 2)
# Professionals id 3 turns
Turn.create(schedule_id: 1,  user_id: 3)
Turn.create(schedule_id: 2,  user_id: 3)
Turn.create(schedule_id: 3,  user_id: 3)
Turn.create(schedule_id: 4,  user_id: 3)
Turn.create(schedule_id: 5,  user_id: 3)
Turn.create(schedule_id: 8,  user_id: 3)
Turn.create(schedule_id: 9,  user_id: 3)
Turn.create(schedule_id: 15, user_id: 3)
Turn.create(schedule_id: 16, user_id: 3)
# Professionals id 4 turns
Turn.create(schedule_id: 1,  user_id: 4)
Turn.create(schedule_id: 2,  user_id: 4)
Turn.create(schedule_id: 3,  user_id: 4)
Turn.create(schedule_id: 4,  user_id: 4)
Turn.create(schedule_id: 8,  user_id: 4)
Turn.create(schedule_id: 9,  user_id: 4)
Turn.create(schedule_id: 10, user_id: 4)
Turn.create(schedule_id: 12, user_id: 4)
Turn.create(schedule_id: 15, user_id: 4)
Turn.create(schedule_id: 16, user_id: 4)
Turn.create(schedule_id: 20, user_id: 4)
Turn.create(schedule_id: 21, user_id: 4)
Turn.create(schedule_id: 22, user_id: 4)
# Professionals id 5 turns
Turn.create(schedule_id: 5,  user_id: 5)
Turn.create(schedule_id: 6,  user_id: 5)
Turn.create(schedule_id: 7,  user_id: 5)
Turn.create(schedule_id: 11, user_id: 5)
Turn.create(schedule_id: 13, user_id: 5)
Turn.create(schedule_id: 14, user_id: 5)
Turn.create(schedule_id: 17, user_id: 5)
Turn.create(schedule_id: 18, user_id: 5)
Turn.create(schedule_id: 19, user_id: 5)
Turn.create(schedule_id: 23, user_id: 5)

# @first_name_man = %w[Adolfo Adrián Agustín Alberto Alejandro Alexander Alexis Alonso Andrés Angel Anthony Antonio
#                      Bautista Benicio Benjamín Carlos Cesar César Cristóbal Daniel David Diego Dylan Eduardo Emiliano Emilio Emmanuel Enrique Erik Ernesto Esteban Ethan Evaristo Fabián Facundo Felipe Félix Fernando Francisco Gabriel Gaspar Geronimo Giorgio Gregorio Gustavo Hugo Ian Ignacio Iker Isaac Jacob Javier Jayden Jeremy Jerónimo Jesus Jesús Joaquín John Jorge Jose José Josué Juan Julián Julio Justin Kevin Lautaro Liam Lian Lorenzo Lucas Luciano Luis Manuel Marco María Mario Martin Martín Mateo Matías Maximiliano Máximo Maykel Melquiades Miguel Nelson Noah Oscar Pablo Pedro Rafael Ramón Raúl Ricardo Rigoberto Roberto Rolando Ronny Samuel Santiago Santino Santos Sebastián Sergio Thiago Tomás Valentino Vicente]
# @second_name_man = %w[Victor Víctor Acton Adam Aiken Alein Alan Andrew Arnold Austin Baldwin Barden Barnett
#                       Barton Basil Bishop Bolton Brent Bruce Caden Carlton Carter Casper Chad Chase Clark Clint Cole Conrad Cooper Curtis Cypril Dawson Dean Denis Dominic Donald Drake Dunstan Eban Edgar Edwin Elton Emil Eton Ferdinand Francis Fraser Frederick Fulbert Gary Gilbert Giles Gray Guy Hanson Harald Harrison Harry Henniker Herbert Homer Hugh Indiana Jaden James Jasper Jett Jordan Joshua Jude Kurtis Lauren Leighton Leonard Leonel Lewis Lionel Locke Luke Mark Marlon Morris Moses Nick Paris Patrick Pierce Raven Ray Rayner River Roger Scott Stuart Sutton Taylor Terence Terry Trent Ulric Usher Vincent Walt Walter Warden Weldon Wes Wesley Wyatt Zayden]
# @last_name = %w[Acosta Aguilar Aguirre Alonso Alvarado Alvarez Andrade Angeles Antonio Arellano Arias Arroyo
#                 Avalos Avila Ayala Barajas Barrera Bautista Becerra Beltrán Benítez Bernal Bravo Cabrera Calderón Camacho Campos Cano Cárdenas Carmona Carrillo Castañeda Castellanos Castillo Castro Cervantes Chan Chávez Cisneros Contreras Córdova Corona Cortés Cortez Cruz Cuevas Dávila Delgado Diaz Domínguez Durán Enríquez Escobar Esparza Espinosa Espinoza Esquivel Estrada Félix Fernández Figueroa Flores Franco Fuentes Galindo Gallardo Gallegos Galván García Garza Gómez González Guerra Guerrero Guevara Gutiérrez Guzmán Hernández Herrera Huerta Ibarra Jiménez Juárez Lara Leon Leyva López Lozano Lugo Luna Macías Magaña Maldonado Marín Márquez Martínez Mata Medina Mejía Méndez Mendoza Mercado Meza Miranda Molina Montes Montiel Montoya Mora Morales Moreno Muñoz Murillo Nava Navarrete Navarro Nuñez Ochoa Olivares Olvera Orozco Ortega Ortiz Osorio Pacheco Padilla Palacios Paredes Parra Peña Peralta Pérez Pineda Ponce Quintero Quiroz Ramírez Ramos Rangel Reséndiz Reyes Reyna Ríos Rivas Rivera Robles Rocha Rodríguez Rojas Román Romero Rosales Rosas Rubio Ruiz Salas Salazar Salgado Salinas Sánchez Sandoval Santiago Santos Saucedo Segura Serrano Silva Solis Sosa Soto Suarez Tapia Téllez Torres Tovar Trejo Trujillo Valdez Valencia Valenzuela Vargas Vásquez Vázquez Vega Velasco Velázquez Vera Villa Villalobos Villanueva Villarreal Villegas Zamora Zárate Zavala Zúñiga]
# @second_last_name = %w[Acosta Aguilar Aguirre Alonso Alvarado Alvarez Andrade Angeles Antonio Arellano Arias Arroyo
#                        Avalos Avila Ayala Barajas Barrera Bautista Becerra Beltrán Benítez Bernal Bravo Cabrera Calderón Camacho Campos Cano Cárdenas Carmona Carrillo Castañeda Castellanos Castillo Castro Cervantes Chan Chávez Cisneros Contreras Córdova Corona Cortés Cortez Cruz Cuevas Dávila Delgado Diaz Domínguez Durán Enríquez Escobar Esparza Espinosa Espinoza Esquivel Estrada Félix Fernández Figueroa Flores Franco Fuentes Galindo Gallardo Gallegos Galván García Garza Gómez González Guerra Guerrero Guevara Gutiérrez Guzmán Hernández Herrera Huerta Ibarra Jiménez Juárez Lara Leon Leyva López Lozano Lugo Luna Macías Magaña Maldonado Marín Márquez Martínez Mata Medina Mejía Méndez Mendoza Mercado Meza Miranda Molina Montes Montiel Montoya Mora Morales Moreno Muñoz Murillo Nava Navarrete Navarro Nuñez Ochoa Olivares Olvera Orozco Ortega Ortiz Osorio Pacheco Padilla Palacios Paredes Parra Peña Peralta Pérez Pineda Ponce Quintero Quiroz Ramírez Ramos Rangel Reséndiz Reyes Reyna Ríos Rivas Rivera Robles Rocha Rodríguez Rojas Román Romero Rosales Rosas Rubio Ruiz Salas Salazar Salgado Salinas Sánchez Sandoval Santiago Santos Saucedo Segura Serrano Silva Solis Sosa Soto Suarez Tapia Téllez Torres Tovar Trejo Trujillo Valdez Valencia Valenzuela Vargas Vásquez Vázquez Vega Velasco Velázquez Vera Villa Villalobos Villanueva Villarreal Villegas Zamora Zárate Zavala Zúñiga]
# @i = 2
# while @i <= 15
#   first_name = @first_name_man[rand(19)]
#   second_name = @second_name_man[rand(19)]
#   last_name = @last_name[rand(15)]
#   second_last_name = @second_last_name[rand(15)]
#   Patient.create(id: @i,
#                  name: first_name,
#                  second_name:,
#                  last_name:,
#                  second_last_name:,
#                  birth_date: "#{rand(1962..2015)}-#{rand(1..12)}-#{rand(1..28)} 17:00:00 UTC",
#                  phone: rand(900_000_000..999_999_999).to_s,
#                  email: "#{first_name}.#{last_name}.#{second_last_name}@gmail.com",
#                  password: '123456',
#                  height: rand(110..200).to_f, observations: 'Creation Patient')
#   @i += 1
# end

# Diet.create(name: 'A1', description: 'Eat 3 times meat per day',                comments: 'Carnivorous')
# Diet.create(name: 'A2', description: 'Eat 3 times vegetables per day',          comments: 'Vegetarian')
# Diet.create(name: 'A3', description: 'Eat 3 times meat and vegetables per day', comments: 'Mixed')
# Diet.create(name: 'B1', description: 'Eat all you can per day',                 comments: 'Fat')
# Diet.create(name: 'B2', description: 'Eat only when you are hungry',            comments: 'Fit')
# Diet.create(name: 'B3', description: 'Eat what you want per day',               comments: 'Normal')
# Diet.create(name: 'C1', description: 'Eat 2 carbohidates and 3 protein',        comments: 'No comments')
# Diet.create(name: 'C2', description: 'Eat 1 vegetable, 1 fruit and 3 protein',  comments: 'No comments')
# Diet.create(name: 'C2', description: 'Eat 1 thing of all per day',              comments: 'No comments')

# Card.create(created_at: '2022-01-03 07:00:00', next_appointment: '2022-01-10', weight: 53.71, comments: 'No comments',
#             patient_id: 1, diet_id: 3)
# Card.create(created_at: '2022-01-10 07:00:00', next_appointment: '2022-01-17', weight: 61.51, comments: 'No comments',
#             patient_id: 1, diet_id: 2)
# Card.create(created_at: '2022-01-17 07:00:00', next_appointment: '2022-01-24', weight: 57.91, comments: 'No comments',
#             patient_id: 1, diet_id: 4)
# Card.create(created_at: '2022-01-24 07:00:00', next_appointment: '2022-01-31', weight: 57.31, comments: 'No comments',
#             patient_id: 1, diet_id: 1)
# Card.create(created_at: '2022-01-31 07:00:00', next_appointment: '2022-02-07', weight: 62.21, comments: 'No comments',
#             patient_id: 1, diet_id: 3)
# Card.create(created_at: '2022-02-07 07:00:00', next_appointment: '2022-02-14', weight: 64.31, comments: 'No comments',
#             patient_id: 1, diet_id: 1)
# Card.create(created_at: '2022-02-14 07:00:00', next_appointment: '2022-02-21', weight: 65.21, comments: 'No comments',
#             patient_id: 1, diet_id: 8)
# Card.create(created_at: '2022-02-21 07:00:00', next_appointment: '2022-02-28', weight: 69.11, comments: 'No comments',
#             patient_id: 1, diet_id: 2)
# Card.create(created_at: '2022-02-28 07:00:00', next_appointment: '2022-03-07', weight: 50.11, comments: 'No comments',
#             patient_id: 1, diet_id: 8)
# Card.create(created_at: '2022-03-07 07:00:00', next_appointment: '2022-03-14', weight: 58.41, comments: 'No comments',
#             patient_id: 1, diet_id: 1)

# Card.create(created_at: '2022-01-04 07:00:00', next_appointment: '2022-01-11', weight: 62.68, comments: 'No comments',
#             patient_id: 2, diet_id: 5)
# Card.create(created_at: '2022-01-11 07:00:00', next_appointment: '2022-01-18', weight: 77.77, comments: 'No comments',
#             patient_id: 2, diet_id: 4)
# Card.create(created_at: '2022-01-18 07:00:00', next_appointment: '2022-01-25', weight: 56.51, comments: 'No comments',
#             patient_id: 2, diet_id: 5)
# Card.create(created_at: '2022-01-25 07:00:00', next_appointment: '2022-02-01', weight: 72.72, comments: 'No comments',
#             patient_id: 2, diet_id: 3)
# Card.create(created_at: '2022-02-01 07:00:00', next_appointment: '2022-02-08', weight: 64.74, comments: 'No comments',
#             patient_id: 2, diet_id: 1)
# Card.create(created_at: '2022-02-08 07:00:00', next_appointment: '2022-02-15', weight: 53.59, comments: 'No comments',
#             patient_id: 2, diet_id: 7)
# Card.create(created_at: '2022-02-15 07:00:00', next_appointment: '2022-02-22', weight: 73.52, comments: 'No comments',
#             patient_id: 2, diet_id: 3)
# Card.create(created_at: '2022-02-22 07:00:00', next_appointment: '2022-02-29', weight: 50.77, comments: 'No comments',
#             patient_id: 2, diet_id: 8)
# Card.create(created_at: '2022-03-01 07:00:00', next_appointment: '2022-03-08', weight: 51.67, comments: 'No comments',
#             patient_id: 2, diet_id: 9)
# Card.create(created_at: '2022-03-08 07:00:00', next_appointment: '2022-03-15', weight: 63.53, comments: 'No comments',
#             patient_id: 2, diet_id: 1)

# Card.create(created_at: '2022-01-05 07:00:00', next_appointment: '2022-01-12', weight: 77.62, comments: 'No comments',
#             patient_id: 3, diet_id: 1)
# Card.create(created_at: '2022-01-12 07:00:00', next_appointment: '2022-01-19', weight: 80.70, comments: 'No comments',
#             patient_id: 3, diet_id: 5)
# Card.create(created_at: '2022-01-19 07:00:00', next_appointment: '2022-01-26', weight: 64.79, comments: 'No comments',
#             patient_id: 3, diet_id: 9)
# Card.create(created_at: '2022-01-26 07:00:00', next_appointment: '2022-02-02', weight: 53.64, comments: 'No comments',
#             patient_id: 3, diet_id: 7)
# Card.create(created_at: '2022-02-02 07:00:00', next_appointment: '2022-02-09', weight: 58.73, comments: 'No comments',
#             patient_id: 3, diet_id: 6)
# Card.create(created_at: '2022-02-09 07:00:00', next_appointment: '2022-02-16', weight: 55.75, comments: 'No comments',
#             patient_id: 3, diet_id: 4)
# Card.create(created_at: '2022-02-16 07:00:00', next_appointment: '2022-02-23', weight: 67.61, comments: 'No comments',
#             patient_id: 3, diet_id: 3)
# Card.create(created_at: '2022-02-23 07:00:00', next_appointment: '2022-03-02', weight: 70.73, comments: 'No comments',
#             patient_id: 3, diet_id: 2)
# Card.create(created_at: '2022-03-02 07:00:00', next_appointment: '2022-03-09', weight: 75.58, comments: 'No comments',
#             patient_id: 3, diet_id: 1)
# Card.create(created_at: '2022-03-09 07:00:00', next_appointment: '2022-03-16', weight: 53.54, comments: 'No comments',
#             patient_id: 3, diet_id: 5)

# Card.create(created_at: '2022-01-06 07:00:00', next_appointment: '2022-01-13', weight: 52.50, comments: 'No comments',
#             patient_id: 4, diet_id: 8)
# Card.create(created_at: '2022-01-13 07:00:00', next_appointment: '2022-01-20', weight: 65.66, comments: 'No comments',
#             patient_id: 4, diet_id: 1)
# Card.create(created_at: '2022-01-20 07:00:00', next_appointment: '2022-01-27', weight: 67.56, comments: 'No comments',
#             patient_id: 4, diet_id: 5)
# Card.create(created_at: '2022-01-27 07:00:00', next_appointment: '2022-02-03', weight: 53.56, comments: 'No comments',
#             patient_id: 4, diet_id: 5)
# Card.create(created_at: '2022-02-03 07:00:00', next_appointment: '2022-02-10', weight: 80.79, comments: 'No comments',
#             patient_id: 4, diet_id: 8)
# Card.create(created_at: '2022-02-10 07:00:00', next_appointment: '2022-02-17', weight: 57.70, comments: 'No comments',
#             patient_id: 4, diet_id: 5)
# Card.create(created_at: '2022-02-17 07:00:00', next_appointment: '2022-02-24', weight: 76.55, comments: 'No comments',
#             patient_id: 4, diet_id: 9)
# Card.create(created_at: '2022-02-24 07:00:00', next_appointment: '2022-03-03', weight: 57.60, comments: 'No comments',
#             patient_id: 4, diet_id: 1)
# Card.create(created_at: '2022-03-03 07:00:00', next_appointment: '2022-03-10', weight: 51.59, comments: 'No comments',
#             patient_id: 4, diet_id: 5)
# Card.create(created_at: '2022-03-10 07:00:00', next_appointment: '2022-03-17', weight: 58.79, comments: 'No comments',
#             patient_id: 4, diet_id: 1)

# Card.create(created_at: '2022-01-07 07:00:00', next_appointment: '2022-01-14', weight: 60.61, comments: 'No comments',
#             patient_id: 5, diet_id: 1)
# Card.create(created_at: '2022-01-14 07:00:00', next_appointment: '2022-01-21', weight: 68.67, comments: 'No comments',
#             patient_id: 5, diet_id: 5)
# Card.create(created_at: '2022-01-21 07:00:00', next_appointment: '2022-01-28', weight: 62.68, comments: 'No comments',
#             patient_id: 5, diet_id: 4)
# Card.create(created_at: '2022-01-28 07:00:00', next_appointment: '2022-02-04', weight: 63.67, comments: 'No comments',
#             patient_id: 5, diet_id: 7)
# Card.create(created_at: '2022-02-04 07:00:00', next_appointment: '2022-02-11', weight: 66.60, comments: 'No comments',
#             patient_id: 5, diet_id: 7)
# Card.create(created_at: '2022-02-11 07:00:00', next_appointment: '2022-02-18', weight: 68.62, comments: 'No comments',
#             patient_id: 5, diet_id: 5)
# Card.create(created_at: '2022-02-18 07:00:00', next_appointment: '2022-02-25', weight: 60.67, comments: 'No comments',
#             patient_id: 5, diet_id: 6)
# Card.create(created_at: '2022-02-25 07:00:00', next_appointment: '2022-03-04', weight: 63.64, comments: 'No comments',
#             patient_id: 5, diet_id: 3)
# Card.create(created_at: '2022-03-04 07:00:00', next_appointment: '2022-03-11', weight: 70.66, comments: 'No comments',
#             patient_id: 5, diet_id: 2)
# Card.create(created_at: '2022-03-11 07:00:00', next_appointment: '2022-03-18', weight: 62.62, comments: 'No comments',
#             patient_id: 5, diet_id: 8)

# Card.create(created_at: '2022-01-03 08:00:00', next_appointment: '2022-01-10', weight: 52.55, comments: 'No comments',
#             patient_id: 6, diet_id: 2)
# Card.create(created_at: '2022-01-10 08:00:00', next_appointment: '2022-01-17', weight: 53.76, comments: 'No comments',
#             patient_id: 6, diet_id: 1)
# Card.create(created_at: '2022-01-17 08:00:00', next_appointment: '2022-01-24', weight: 79.57, comments: 'No comments',
#             patient_id: 6, diet_id: 5)
# Card.create(created_at: '2022-01-24 08:00:00', next_appointment: '2022-01-31', weight: 80.60, comments: 'No comments',
#             patient_id: 6, diet_id: 8)
# Card.create(created_at: '2022-01-31 08:00:00', next_appointment: '2022-02-07', weight: 76.66, comments: 'No comments',
#             patient_id: 6, diet_id: 7)
# Card.create(created_at: '2022-02-07 08:00:00', next_appointment: '2022-02-14', weight: 54.50, comments: 'No comments',
#             patient_id: 6, diet_id: 7)
# Card.create(created_at: '2022-02-14 08:00:00', next_appointment: '2022-02-21', weight: 53.52, comments: 'No comments',
#             patient_id: 6, diet_id: 4)
# Card.create(created_at: '2022-02-21 08:00:00', next_appointment: '2022-02-28', weight: 77.79, comments: 'No comments',
#             patient_id: 6, diet_id: 6)
# Card.create(created_at: '2022-02-28 08:00:00', next_appointment: '2022-03-07', weight: 57.60, comments: 'No comments',
#             patient_id: 6, diet_id: 9)
# Card.create(created_at: '2022-03-07 08:00:00', next_appointment: '2022-03-14', weight: 51.79, comments: 'No comments',
#             patient_id: 6, diet_id: 3)

# Card.create(created_at: '2022-01-04 08:00:00', next_appointment: '2022-01-11', weight: 81.88, comments: 'No comments',
#             patient_id: 7, diet_id: 1)
# Card.create(created_at: '2022-01-11 08:00:00', next_appointment: '2022-01-18', weight: 84.84, comments: 'No comments',
#             patient_id: 7, diet_id: 5)
# Card.create(created_at: '2022-01-18 08:00:00', next_appointment: '2022-01-25', weight: 90.80, comments: 'No comments',
#             patient_id: 7, diet_id: 9)
# Card.create(created_at: '2022-01-25 08:00:00', next_appointment: '2022-02-01', weight: 86.84, comments: 'No comments',
#             patient_id: 7, diet_id: 8)
# Card.create(created_at: '2022-02-01 08:00:00', next_appointment: '2022-02-08', weight: 88.84, comments: 'No comments',
#             patient_id: 7, diet_id: 7)
# Card.create(created_at: '2022-02-08 08:00:00', next_appointment: '2022-02-15', weight: 82.86, comments: 'No comments',
#             patient_id: 7, diet_id: 4)
# Card.create(created_at: '2022-02-15 08:00:00', next_appointment: '2022-02-22', weight: 82.86, comments: 'No comments',
#             patient_id: 7, diet_id: 5)
# Card.create(created_at: '2022-02-22 08:00:00', next_appointment: '2022-02-29', weight: 81.82, comments: 'No comments',
#             patient_id: 7, diet_id: 2)
# Card.create(created_at: '2022-03-01 08:00:00', next_appointment: '2022-03-08', weight: 80.85, comments: 'No comments',
#             patient_id: 7, diet_id: 3)
# Card.create(created_at: '2022-03-08 08:00:00', next_appointment: '2022-03-15', weight: 80.81, comments: 'No comments',
#             patient_id: 7, diet_id: 1)

# Card.create(created_at: '2022-01-05 13:00:00', next_appointment: '2022-01-12', weight: 71.72, comments: 'No comments',
#             patient_id: 8, diet_id: 9)
# Card.create(created_at: '2022-01-12 13:00:00', next_appointment: '2022-01-19', weight: 72.75, comments: 'No comments',
#             patient_id: 8, diet_id: 8)
# Card.create(created_at: '2022-01-19 13:00:00', next_appointment: '2022-01-26', weight: 72.73, comments: 'No comments',
#             patient_id: 8, diet_id: 7)
# Card.create(created_at: '2022-01-26 13:00:00', next_appointment: '2022-02-02', weight: 75.70, comments: 'No comments',
#             patient_id: 8, diet_id: 5)
# Card.create(created_at: '2022-02-02 13:00:00', next_appointment: '2022-02-09', weight: 73.75, comments: 'No comments',
#             patient_id: 8, diet_id: 4)
# Card.create(created_at: '2022-02-09 13:00:00', next_appointment: '2022-02-16', weight: 75.74, comments: 'No comments',
#             patient_id: 8, diet_id: 2)
# Card.create(created_at: '2022-02-16 13:00:00', next_appointment: '2022-02-23', weight: 72.72, comments: 'No comments',
#             patient_id: 8, diet_id: 3)
# Card.create(created_at: '2022-02-23 13:00:00', next_appointment: '2022-03-02', weight: 73.75, comments: 'No comments',
#             patient_id: 8, diet_id: 1)
# Card.create(created_at: '2022-03-02 13:00:00', next_appointment: '2022-03-09', weight: 73.74, comments: 'No comments',
#             patient_id: 8, diet_id: 1)
# Card.create(created_at: '2022-03-09 13:00:00', next_appointment: '2022-03-16', weight: 72.72, comments: 'No comments',
#             patient_id: 8, diet_id: 2)

# Card.create(created_at: '2022-01-06 08:00:00', next_appointment: '2022-01-13', weight: 72.71, comments: 'No comments',
#             patient_id: 9, diet_id: 1)
# Card.create(created_at: '2022-01-13 08:00:00', next_appointment: '2022-01-20', weight: 68.66, comments: 'No comments',
#             patient_id: 9, diet_id: 4)
# Card.create(created_at: '2022-01-20 08:00:00', next_appointment: '2022-01-27', weight: 72.69, comments: 'No comments',
#             patient_id: 9, diet_id: 7)
# Card.create(created_at: '2022-01-27 08:00:00', next_appointment: '2022-02-03', weight: 70.68, comments: 'No comments',
#             patient_id: 9, diet_id: 8)
# Card.create(created_at: '2022-02-03 08:00:00', next_appointment: '2022-02-10', weight: 69.69, comments: 'No comments',
#             patient_id: 9, diet_id: 5)
# Card.create(created_at: '2022-02-10 08:00:00', next_appointment: '2022-02-17', weight: 70.65, comments: 'No comments',
#             patient_id: 9, diet_id: 2)
# Card.create(created_at: '2022-02-17 08:00:00', next_appointment: '2022-02-24', weight: 68.68, comments: 'No comments',
#             patient_id: 9, diet_id: 9)
# Card.create(created_at: '2022-02-24 08:00:00', next_appointment: '2022-03-03', weight: 69.65, comments: 'No comments',
#             patient_id: 9, diet_id: 6)
# Card.create(created_at: '2022-03-03 08:00:00', next_appointment: '2022-03-10', weight: 67.65, comments: 'No comments',
#             patient_id: 9, diet_id: 3)
# Card.create(created_at: '2022-03-10 08:00:00', next_appointment: '2022-03-17', weight: 72.72, comments: 'No comments',
#             patient_id: 9, diet_id: 2)

# Card.create(created_at: '2022-01-07 08:00:00', next_appointment: '2022-01-14', weight: 74.74, comments: 'No comments',
#             patient_id: 10, diet_id: 9)
# Card.create(created_at: '2022-01-14 08:00:00', next_appointment: '2022-01-21', weight: 71.73, comments: 'No comments',
#             patient_id: 10, diet_id: 6)
# Card.create(created_at: '2022-01-21 08:00:00', next_appointment: '2022-01-28', weight: 72.75, comments: 'No comments',
#             patient_id: 10, diet_id: 3)
# Card.create(created_at: '2022-01-28 08:00:00', next_appointment: '2022-02-04', weight: 70.73, comments: 'No comments',
#             patient_id: 10, diet_id: 5)
# Card.create(created_at: '2022-02-04 08:00:00', next_appointment: '2022-02-11', weight: 71.72, comments: 'No comments',
#             patient_id: 10, diet_id: 8)
# Card.create(created_at: '2022-02-11 08:00:00', next_appointment: '2022-02-18', weight: 70.73, comments: 'No comments',
#             patient_id: 10, diet_id: 7)
# Card.create(created_at: '2022-02-18 08:00:00', next_appointment: '2022-02-25', weight: 71.74, comments: 'No comments',
#             patient_id: 10, diet_id: 4)
# Card.create(created_at: '2022-02-25 08:00:00', next_appointment: '2022-03-04', weight: 74.70, comments: 'No comments',
#             patient_id: 10, diet_id: 1)
# Card.create(created_at: '2022-03-04 08:00:00', next_appointment: '2022-03-11', weight: 74.71, comments: 'No comments',
#             patient_id: 10, diet_id: 2)
# Card.create(created_at: '2022-03-11 08:00:00', next_appointment: '2022-03-18', weight: 71.74, comments: 'No comments',
#             patient_id: 10, diet_id: 2)

# Card.create(created_at: '2022-01-03 09:00:00', next_appointment: '2022-01-10', weight: 90.84, comments: 'No comments',
#             patient_id: 11, diet_id: 1)
# Card.create(created_at: '2022-01-10 09:00:00', next_appointment: '2022-01-17', weight: 88.86, comments: 'No comments',
#             patient_id: 11, diet_id: 4)
# Card.create(created_at: '2022-01-17 09:00:00', next_appointment: '2022-01-24', weight: 87.86, comments: 'No comments',
#             patient_id: 11, diet_id: 7)
# Card.create(created_at: '2022-01-24 09:00:00', next_appointment: '2022-01-31', weight: 82.90, comments: 'No comments',
#             patient_id: 11, diet_id: 8)
# Card.create(created_at: '2022-01-31 09:00:00', next_appointment: '2022-02-07', weight: 85.83, comments: 'No comments',
#             patient_id: 11, diet_id: 5)
# Card.create(created_at: '2022-02-07 09:00:00', next_appointment: '2022-02-14', weight: 88.85, comments: 'No comments',
#             patient_id: 11, diet_id: 9)
# Card.create(created_at: '2022-02-14 09:00:00', next_appointment: '2022-02-21', weight: 85.85, comments: 'No comments',
#             patient_id: 11, diet_id: 6)
# Card.create(created_at: '2022-02-21 09:00:00', next_appointment: '2022-02-28', weight: 88.82, comments: 'No comments',
#             patient_id: 11, diet_id: 2)
# Card.create(created_at: '2022-02-28 09:00:00', next_appointment: '2022-03-07', weight: 83.81, comments: 'No comments',
#             patient_id: 11, diet_id: 3)
# Card.create(created_at: '2022-03-07 09:00:00', next_appointment: '2022-03-14', weight: 87.83, comments: 'No comments',
#             patient_id: 11, diet_id: 4)

# Card.create(created_at: '2022-01-04 09:00:00', next_appointment: '2022-01-11', weight: 66.67, comments: 'No comments',
#             patient_id: 12, diet_id: 1)
# Card.create(created_at: '2022-01-11 09:00:00', next_appointment: '2022-01-18', weight: 65.67, comments: 'No comments',
#             patient_id: 12, diet_id: 9)
# Card.create(created_at: '2022-01-18 09:00:00', next_appointment: '2022-01-25', weight: 67.66, comments: 'No comments',
#             patient_id: 12, diet_id: 8)
# Card.create(created_at: '2022-01-25 09:00:00', next_appointment: '2022-02-01', weight: 71.66, comments: 'No comments',
#             patient_id: 12, diet_id: 7)
# Card.create(created_at: '2022-02-01 09:00:00', next_appointment: '2022-02-08', weight: 71.66, comments: 'No comments',
#             patient_id: 12, diet_id: 4)
# Card.create(created_at: '2022-02-08 09:00:00', next_appointment: '2022-02-15', weight: 72.72, comments: 'No comments',
#             patient_id: 12, diet_id: 5)
# Card.create(created_at: '2022-02-15 09:00:00', next_appointment: '2022-02-22', weight: 66.66, comments: 'No comments',
#             patient_id: 12, diet_id: 1)
# Card.create(created_at: '2022-02-22 09:00:00', next_appointment: '2022-02-29', weight: 67.67, comments: 'No comments',
#             patient_id: 12, diet_id: 2)
# Card.create(created_at: '2022-03-01 09:00:00', next_appointment: '2022-03-08', weight: 65.66, comments: 'No comments',
#             patient_id: 12, diet_id: 3)
# Card.create(created_at: '2022-03-08 09:00:00', next_appointment: '2022-03-15', weight: 69.68, comments: 'No comments',
#             patient_id: 12, diet_id: 6)

# Card.create(created_at: '2022-01-05 14:00:00', next_appointment: '2022-01-12', weight: 72.70, comments: 'No comments',
#             patient_id: 13, diet_id: 4)
# Card.create(created_at: '2022-01-12 14:00:00', next_appointment: '2022-01-19', weight: 69.68, comments: 'No comments',
#             patient_id: 13, diet_id: 5)
# Card.create(created_at: '2022-01-19 14:00:00', next_appointment: '2022-01-26', weight: 71.70, comments: 'No comments',
#             patient_id: 13, diet_id: 9)
# Card.create(created_at: '2022-01-26 14:00:00', next_appointment: '2022-02-02', weight: 66.72, comments: 'No comments',
#             patient_id: 13, diet_id: 7)
# Card.create(created_at: '2022-02-02 14:00:00', next_appointment: '2022-02-09', weight: 69.69, comments: 'No comments',
#             patient_id: 13, diet_id: 9)
# Card.create(created_at: '2022-02-09 14:00:00', next_appointment: '2022-02-16', weight: 68.66, comments: 'No comments',
#             patient_id: 13, diet_id: 6)
# Card.create(created_at: '2022-02-16 14:00:00', next_appointment: '2022-02-23', weight: 68.67, comments: 'No comments',
#             patient_id: 13, diet_id: 2)
# Card.create(created_at: '2022-02-23 14:00:00', next_appointment: '2022-03-02', weight: 69.71, comments: 'No comments',
#             patient_id: 13, diet_id: 3)
# Card.create(created_at: '2022-03-02 14:00:00', next_appointment: '2022-03-09', weight: 65.69, comments: 'No comments',
#             patient_id: 13, diet_id: 5)
# Card.create(created_at: '2022-03-09 14:00:00', next_appointment: '2022-03-16', weight: 70.71, comments: 'No comments',
#             patient_id: 13, diet_id: 4)

# Card.create(created_at: '2022-01-06 12:00:00', next_appointment: '2022-01-13', weight: 83.83, comments: 'No comments',
#             patient_id: 14, diet_id: 7)
# Card.create(created_at: '2022-01-13 12:00:00', next_appointment: '2022-01-20', weight: 75.77, comments: 'No comments',
#             patient_id: 14, diet_id: 8)
# Card.create(created_at: '2022-01-20 12:00:00', next_appointment: '2022-01-27', weight: 82.74, comments: 'No comments',
#             patient_id: 14, diet_id: 9)
# Card.create(created_at: '2022-01-27 12:00:00', next_appointment: '2022-02-03', weight: 85.75, comments: 'No comments',
#             patient_id: 14, diet_id: 9)
# Card.create(created_at: '2022-02-03 12:00:00', next_appointment: '2022-02-10', weight: 81.75, comments: 'No comments',
#             patient_id: 14, diet_id: 5)
# Card.create(created_at: '2022-02-10 12:00:00', next_appointment: '2022-02-17', weight: 71.76, comments: 'No comments',
#             patient_id: 14, diet_id: 5)
# Card.create(created_at: '2022-02-17 12:00:00', next_appointment: '2022-02-24', weight: 78.76, comments: 'No comments',
#             patient_id: 14, diet_id: 3)
# Card.create(created_at: '2022-02-24 12:00:00', next_appointment: '2022-03-03', weight: 80.77, comments: 'No comments',
#             patient_id: 14, diet_id: 1)
# Card.create(created_at: '2022-03-03 12:00:00', next_appointment: '2022-03-10', weight: 73.75, comments: 'No comments',
#             patient_id: 14, diet_id: 4)
# Card.create(created_at: '2022-03-10 12:00:00', next_appointment: '2022-03-17', weight: 81.73, comments: 'No comments',
#             patient_id: 14, diet_id: 2)

# Card.create(created_at: '2022-01-07 09:00:00', next_appointment: '2022-01-14', weight: 62.1, comments: 'No comments',
#             patient_id: 15, diet_id: 1)
# Card.create(created_at: '2022-01-14 09:00:00', next_appointment: '2022-01-21', weight: 64.5, comments: 'No comments',
#             patient_id: 15, diet_id: 5)
# Card.create(created_at: '2022-01-21 09:00:00', next_appointment: '2022-01-28', weight: 60.5, comments: 'No comments',
#             patient_id: 15, diet_id: 8)
# Card.create(created_at: '2022-01-28 09:00:00', next_appointment: '2022-02-04', weight: 60.8, comments: 'No comments',
#             patient_id: 15, diet_id: 7)
# Card.create(created_at: '2022-02-04 09:00:00', next_appointment: '2022-02-11', weight: 60.1, comments: 'No comments',
#             patient_id: 15, diet_id: 7)
# Card.create(created_at: '2022-02-11 09:00:00', next_appointment: '2022-02-18', weight: 62.8, comments: 'No comments',
#             patient_id: 15, diet_id: 4)
# Card.create(created_at: '2022-02-18 09:00:00', next_appointment: '2022-02-25', weight: 64.3, comments: 'No comments',
#             patient_id: 15, diet_id: 6)
# Card.create(created_at: '2022-02-25 09:00:00', next_appointment: '2022-03-04', weight: 63.0, comments: 'No comments',
#             patient_id: 15, diet_id: 9)
# Card.create(created_at: '2022-03-04 09:00:00', next_appointment: '2022-03-11', weight: 67.9, comments: 'No comments',
#             patient_id: 15, diet_id: 8)
# Card.create(created_at: '2022-03-11 09:00:00', next_appointment: '2022-03-18', weight: 71.2, comments: 'No comments',
#             patient_id: 15, diet_id: 5)

Service.create(name: 'Nutritional consultation', duration: 1, price: 120) # 1 - 1
Service.create(name: 'Facial massage',           duration: 1, price: 80)  # 2 - 1
Service.create(name: 'Body massage',             duration: 2, price: 100) # 3 - 2
Service.create(name: 'Acupuncture',              duration: 1, price: 150) # 4 - 1
Service.create(name: 'Basic rehabilitation',     duration: 2, price: 300) # 5 - 2
Service.create(name: 'Intensive therapy',        duration: 3, price: 550) # 6 - 3

# Appointment.create(date_time: '2022-08-01 07:00:00', reason: '', status: 'cancelled', payment_status: 0, score: 0,
#                    review: 'No comments', service_id: 1, user_id: 4, patient_id: 1)
# Appointment.create(date_time: '2022-08-02 07:00:00', reason: '', status: 'finished', payment_status: 1, score: 9,
#                    review: 'No comments', service_id: 1, user_id: 4, patient_id: 2)
# Appointment.create(date_time: '2022-08-03 07:00:00', reason: '', status: 'finished', payment_status: 1, score: 8,
#                    review: 'No comments', service_id: 1, user_id: 4, patient_id: 3)
# Appointment.create(date_time: '2022-08-04 07:00:00', reason: '', status: 'finished', payment_status: 1, score: 8,
#                    review: 'No comments', service_id: 1, user_id: 4, patient_id: 4)
# Appointment.create(date_time: '2022-08-05 07:00:00', reason: '', status: 'finished', payment_status: 1, score: 9,
#                    review: 'No comments', service_id: 1, user_id: 4, patient_id: 5)
# Appointment.create(date_time: '2022-08-08 08:00:00', reason: '', status: 'pending', payment_status: 0, score: 10,
#                    review: 'No comments', service_id: 1, user_id: 4, patient_id: 6)
# Appointment.create(date_time: '2022-08-09 08:00:00', reason: '', status: 'pending', payment_status: 0, score: 0,
#                    review: 'No comments', service_id: 1, user_id: 4, patient_id: 7)
# Appointment.create(date_time: '2022-08-11 08:00:00', reason: '', status: 'pending', payment_status: 0, score: 0,
#                    review: 'No comments', service_id: 1, user_id: 4, patient_id: 9)
# Appointment.create(date_time: '2022-08-12 08:00:00', reason: '', status: 'pending', payment_status: 0, score: 0,
#                    review: 'No comments', service_id: 1, user_id: 4, patient_id: 10)
# Appointment.create(date_time: '2022-08-15 09:00:00', reason: '', status: 'cancelled', payment_status: 0, score: 0,
#                    review: 'No comments', service_id: 1, user_id: 4, patient_id: 11)
# Appointment.create(date_time: '2022-08-16 09:00:00', reason: '', status: 'pending', payment_status: 0, score: 0,
#                    review: 'No comments', service_id: 1, user_id: 4, patient_id: 12)
# Appointment.create(date_time: '2022-08-19 09:00:00', reason: '', status: 'pending', payment_status: 0, score: 0,
#                    review: 'No comments', service_id: 1, user_id: 4, patient_id: 15)
# Appointment.create(date_time: '2022-08-22 10:00:00', reason: '', status: 'pending', payment_status: 0, score: 0,
#                    review: 'No comments', service_id: 1, user_id: 4, patient_id: 1)
# Appointment.create(date_time: '2022-08-29 07:00:00', reason: '', status: 'pending', payment_status: 0, score: 0,
#                    review: 'No comments', service_id: 2, user_id: 2, patient_id: 6)
# Appointment.create(date_time: '2022-08-30 07:00:00', reason: '', status: 'cancelled', payment_status: 0, score: 0,
#                    review: 'No comments', service_id: 3, user_id: 2, patient_id: 7)
# Appointment.create(date_time: '2022-08-30 09:00:00', reason: '', status: 'pending', payment_status: 0, score: 0,
#                    review: 'No comments', service_id: 4, user_id: 3, patient_id: 8)

# Appointment.create(date_time: '2022-09-01 12:00:00', reason: '', status: 'pending',   payment_status: 0, score: 0, review: 'No comments', service_id: 1, user_id: 5, patient_id: 9)
# Appointment.create(date_time: '2022-09-02 13:00:00', reason: '', status: 'pending',   payment_status: 0, score: 0, review: 'No comments', service_id: 1, user_id: 5, patient_id: 10)
# Appointment.create(date_time: '2022-09-05 12:00:00', reason: '', status: 'pending',   payment_status: 0, score: 0, review: 'No comments', service_id: 1, user_id: 5, patient_id: 11)
# Appointment.create(date_time: '2022-09-06 14:00:00', reason: '', status: 'pending',   payment_status: 0, score: 0, review: 'No comments', service_id: 1, user_id: 5, patient_id: 12)
# Appointment.create(date_time: '2022-09-07 14:00:00', reason: '', status: 'pending',   payment_status: 0, score: 0, review: 'No comments', service_id: 1, user_id: 5, patient_id: 13)
# Appointment.create(date_time: '2022-09-08 12:00:00', reason: '', status: 'cancelled', payment_status: 0, score: 0, review: 'No comments', service_id: 1, user_id: 5, patient_id: 14)
# Appointment.create(date_time: '2022-09-09 13:00:00', reason: '', status: 'pending',   payment_status: 0, score: 0, review: 'No comments', service_id: 1, user_id: 5, patient_id: 15)
# Appointment.create(date_time: '2022-09-12 13:00:00', reason: '', status: 'pending',   payment_status: 0, score: 0, review: 'No comments', service_id: 1, user_id: 5, patient_id: 1)
# Appointment.create(date_time: '2022-09-13 14:00:00', reason: '', status: 'pending',   payment_status: 0, score: 0, review: 'No comments', service_id: 1, user_id: 5, patient_id: 2)
# Appointment.create(date_time: '2022-09-14 14:00:00', reason: '', status: 'pending',   payment_status: 0, score: 0, review: 'No comments', service_id: 1, user_id: 5, patient_id: 3)
# Appointment.create(date_time: '2022-09-15 12:00:00', reason: '', status: 'pending',   payment_status: 0, score: 0, review: 'No comments', service_id: 1, user_id: 5, patient_id: 4)
# Appointment.create(date_time: '2022-09-16 13:00:00', reason: '', status: 'pending',   payment_status: 0, score: 0, review: 'No comments', service_id: 1, user_id: 5, patient_id: 5)
# Appointment.create(date_time: '2022-09-19 14:00:00', reason: '', status: 'pending',   payment_status: 0, score: 0, review: 'No comments', service_id: 1, user_id: 5, patient_id: 6)
# Appointment.create(date_time: '2022-09-20 14:00:00', reason: '', status: 'cancelled', payment_status: 0, score: 0, review: 'No comments', service_id: 1, user_id: 5, patient_id: 7)
# Appointment.create(date_time: '2022-09-21 14:00:00', reason: '', status: 'pending',   payment_status: 0, score: 0, review: 'No comments', service_id: 1, user_id: 5, patient_id: 8)
# Appointment.create(date_time: '2022-09-22 14:00:00', reason: '', status: 'pending',   payment_status: 0, score: 0, review: 'No comments', service_id: 1, user_id: 5, patient_id: 9)
# Appointment.create(date_time: '2022-09-23 13:00:00', reason: '', status: 'pending',   payment_status: 0, score: 0, review: 'No comments', service_id: 1, user_id: 5, patient_id: 10)
# Appointment.create(date_time: '2022-09-26 12:00:00', reason: '', status: 'cancelled', payment_status: 0, score: 0, review: 'No comments', service_id: 1, user_id: 5, patient_id: 11)
# Appointment.create(date_time: '2022-09-27 14:00:00', reason: '', status: 'pending',   payment_status: 0, score: 0, review: 'No comments', service_id: 1, user_id: 5, patient_id: 12)
# Appointment.create(date_time: '2022-09-28 14:00:00', reason: '', status: 'pending',   payment_status: 0, score: 0, review: 'No comments', service_id: 1, user_id: 5, patient_id: 13)
# Appointment.create(date_time: '2022-09-29 12:00:00', reason: '', status: 'pending',   payment_status: 0, score: 0, review: 'No comments', service_id: 1, user_id: 5, patient_id: 14)
# Appointment.create(date_time: '2022-09-30 13:00:00', reason: '', status: 'cancelled', payment_status: 0, score: 0, review: 'No comments', service_id: 1, user_id: 5, patient_id: 15)
# Appointment.create(date_time: '2022-09-31 13:00:00', reason: '', status: 'pending',   payment_status: 0, score: 0, review: 'No comments', service_id: 1, user_id: 5, patient_id: 1)

# # No borrar

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

# Run seed to create Patient, can create women and men
# @first_name_man = %w[Adolfo	Adrián	Agustín	Alberto	Alejandro	Alexander	Alexis	Alonso	Andrés	Angel	Anthony	Antonio	Bautista	Benicio	Benjamín	Carlos	Cesar	César	Cristóbal	Daniel	David	Diego	Dylan	Eduardo	Emiliano	Emilio	Emmanuel	Enrique	Erik	Ernesto	Esteban	Ethan	Evaristo	Fabián	Facundo	Felipe	Félix	Fernando	Francisco	Gabriel	Gaspar	Geronimo	Giorgio	Gregorio	Gustavo	Hugo	Ian	Ignacio	Iker	Isaac	Jacob	Javier	Jayden	Jeremy	Jerónimo	Jesus	Jesús	Joaquín	John	Jorge	Jose	José	Josué	Juan	Julián	Julio	Justin	Kevin	Lautaro	Liam	Lian	Lorenzo	Lucas	Luciano	Luis	Manuel	Marco	María	Mario	Martin	Martín	Mateo	Matías	Maximiliano	Máximo	Maykel	Melquiades	Miguel	Nelson	Noah	Oscar	Pablo	Pedro	Rafael	Ramón	Raúl	Ricardo	Rigoberto	Roberto	Rolando	Ronny	Samuel	Santiago	Santino	Santos	Sebastián	Sergio	Thiago	Tomás	Valentino	Vicente]
# @second_name_man = %w[Victor	Víctor	Acton	Adam	Aiken	Alein	Alan	Andrew	Arnold	Austin	Baldwin	Barden	Barnett	Barton	Basil	Bishop	Bolton	Brent	Bruce	Caden	Carlton	Carter	Casper	Chad	Chase	Clark	Clint	Cole	Conrad	Cooper	Curtis	Cypril	Dawson	Dean	Denis	Dominic	Donald	Drake	Dunstan	Eban	Edgar	Edwin	Elton	Emil	Eton	Ferdinand	Francis	Fraser	Frederick	Fulbert	Gary	Gilbert	Giles	Gray	Guy	Hanson	Harald	Harrison	Harry	Henniker	Herbert	Homer	Hugh	Indiana	Jaden	James	Jasper	Jett	Jordan	Joshua	Jude	Kurtis	Lauren	Leighton	Leonard	Leonel	Lewis	Lionel	Locke	Luke	Mark	Marlon	Morris	Moses	Nick	Paris	Patrick	Pierce	Raven	Ray	Rayner	River	Roger	Scott	Stuart	Sutton	Taylor	Terence	Terry	Trent	Ulric	Usher	Vincent	Walt	Walter	Warden	Weldon	Wes	Wesley	Wyatt	Zayden]

# @last_name = %w[Acosta	Aguilar	Aguirre	Alonso	Alvarado	Alvarez	Andrade	Angeles	Antonio	Arellano	Arias	Arroyo	Avalos	Avila	Ayala	Barajas	Barrera	Bautista	Becerra	Beltrán	Benítez	Bernal	Bravo	Cabrera	Calderón	Camacho	Campos	Cano	Cárdenas	Carmona	Carrillo	Castañeda	Castellanos	Castillo	Castro	Cervantes	Chan	Chávez	Cisneros	Contreras	Córdova	Corona	Cortés	Cortez	Cruz	Cuevas	Dávila	Delgado	Diaz	Domínguez	Durán	Enríquez	Escobar	Esparza	Espinosa	Espinoza	Esquivel	Estrada	Félix	Fernández	Figueroa	Flores	Franco	Fuentes	Galindo	Gallardo	Gallegos	Galván	García	Garza	Gómez	González	Guerra	Guerrero	Guevara	Gutiérrez	Guzmán	Hernández	Herrera	Huerta	Ibarra	Jiménez	Juárez	Lara	Leon	Leyva	López	Lozano	Lugo	Luna	Macías	Magaña	Maldonado	Marín	Márquez	Martínez	Mata	Medina	Mejía	Méndez	Mendoza	Mercado	Meza	Miranda	Molina	Montes	Montiel	Montoya	Mora	Morales	Moreno	Muñoz	Murillo	Nava	Navarrete	Navarro	Nuñez	Ochoa	Olivares	Olvera	Orozco	Ortega	Ortiz	Osorio	Pacheco	Padilla	Palacios	Paredes	Parra	Peña	Peralta	Pérez	Pineda	Ponce	Quintero	Quiroz	Ramírez	Ramos	Rangel	Reséndiz	Reyes	Reyna	Ríos	Rivas	Rivera	Robles	Rocha	Rodríguez	Rojas	Román	Romero	Rosales	Rosas	Rubio	Ruiz	Salas	Salazar	Salgado	Salinas	Sánchez	Sandoval	Santiago	Santos	Saucedo	Segura	Serrano	Silva	Solis	Sosa	Soto	Suarez	Tapia	Téllez	Torres	Tovar	Trejo	Trujillo	Valdez	Valencia	Valenzuela	Vargas	Vásquez	Vázquez	Vega	Velasco	Velázquez	Vera	Villa	Villalobos	Villanueva	Villarreal	Villegas	Zamora	Zárate	Zavala	Zúñiga]
# @second_last_name = %w[Acosta	Aguilar	Aguirre	Alonso	Alvarado	Alvarez	Andrade	Angeles	Antonio	Arellano	Arias	Arroyo	Avalos	Avila	Ayala	Barajas	Barrera	Bautista	Becerra	Beltrán	Benítez	Bernal	Bravo	Cabrera	Calderón	Camacho	Campos	Cano	Cárdenas	Carmona	Carrillo	Castañeda	Castellanos	Castillo	Castro	Cervantes	Chan	Chávez	Cisneros	Contreras	Córdova	Corona	Cortés	Cortez	Cruz	Cuevas	Dávila	Delgado	Diaz	Domínguez	Durán	Enríquez	Escobar	Esparza	Espinosa	Espinoza	Esquivel	Estrada	Félix	Fernández	Figueroa	Flores	Franco	Fuentes	Galindo	Gallardo	Gallegos	Galván	García	Garza	Gómez	González	Guerra	Guerrero	Guevara	Gutiérrez	Guzmán	Hernández	Herrera	Huerta	Ibarra	Jiménez	Juárez	Lara	Leon	Leyva	López	Lozano	Lugo	Luna	Macías	Magaña	Maldonado	Marín	Márquez	Martínez	Mata	Medina	Mejía	Méndez	Mendoza	Mercado	Meza	Miranda	Molina	Montes	Montiel	Montoya	Mora	Morales	Moreno	Muñoz	Murillo	Nava	Navarrete	Navarro	Nuñez	Ochoa	Olivares	Olvera	Orozco	Ortega	Ortiz	Osorio	Pacheco	Padilla	Palacios	Paredes	Parra	Peña	Peralta	Pérez	Pineda	Ponce	Quintero	Quiroz	Ramírez	Ramos	Rangel	Reséndiz	Reyes	Reyna	Ríos	Rivas	Rivera	Robles	Rocha	Rodríguez	Rojas	Román	Romero	Rosales	Rosas	Rubio	Ruiz	Salas	Salazar	Salgado	Salinas	Sánchez	Sandoval	Santiago	Santos	Saucedo	Segura	Serrano	Silva	Solis	Sosa	Soto	Suarez	Tapia	Téllez	Torres	Tovar	Trejo	Trujillo	Valdez	Valencia	Valenzuela	Vargas	Vásquez	Vázquez	Vega Velasco	Velázquez	Vera	Villa	Villalobos	Villanueva	Villarreal	Villegas	Zamora	Zárate	Zavala	Zúñiga]
# @i = 1
# while(@i <= 5000) do
#   first_name = @first_name_man[rand(19)]
#   second_name = @second_name_man[rand(19)]
#   last_name = @last_name[rand(15)]
#   second_last_name = @second_last_name[rand(15)]
#   Patient.create( id: @i,
#                   name: first_name,
#                   second_name: second_name,
#                   last_name: last_name,
#                   second_last_name: second_last_name,
#                   birth_date: "#{rand(1962..2015)}-#{rand(1..12)}-#{rand(1..28)} 17:00:00 UTC",
#                   phone: "#{rand(900000000..999999999)}",
#                   email: "#{first_name}.#{last_name}.#{second_last_name}@gmail.com",
#                   password: "123456",
#                   height: rand(110..200).to_f, observations: "Creation Patient")
#   @i+=1
# end

# @first_name_woman = %w[Enriqueta Marlene Siomara Nariana Denisse Patricia Pilar Geovana Olivia Marta Roxana Sonia Luciana Salomé Isabella Mariana Gabriela Emily Abigail Abril Agustina Alaia Alana Alba Luz Alejandra Alicia Alma Altagracia Amala Amalia Amanda Ana Andrea Angeles Antonella Antonia Ariana Ashley Bárbara Beatriz Belén Briana Brithany Camila Caridad Carmen Carolina Catalina Celeste Claudia Concepción Daniela Danna Dayana Delfina Domenica Dulce Elizabeth Emma Esmeralda Evelyn Florencia Francesca Francisca Génesis Guadalupe Isidora Jimena Josefa Josefina Juana Julia Julieta Kamila Karla Kiara]
# @second_name_woman = %w[Danna Mía Domenica Elizabeth Beatriz Ramona Liz Ariana Briana María Julieta Martina Emma Camila Sofía Valentina Victoria Maria Ana Rosa Juana Mar Guadalupe Kimberly Laura Leticia Lidia Lisandra Liz Luana Lucía Luciana Luisa Fernanda Luz Luz María Mabel Maite Margarita María Mariangel Mariapaz Maritza Martha Martina Mayelin Melany Mercedes Mia Mikaela Morena Noemí Odalys Olga Olivia Patricia Paula Ramona Raquel Reina Isabel Rosa Rosmery Roxana Salomé Samantha Sara Silvia Sofía Sonia Sophia Tania Teresa Trinidad Valentina Valeria Vanessa Verónica Victoria Ximena Yadira Yaima Yamileth Yanelis Yanet Zoe]
# @last_name = %w[Hernandez Garcia Martinez Lopez Gonzalez Perez Rodriguez Sanchez Ramirez Cruz Flores Gomez Morales Vazquez Reyes Jimenez Torres Diaz Gutierrez Ruiz Mendoza Aguilar Ortiz Moreno Castillo Romero Alvarez Mendez Chavez Rivera]
# @second_last_name = %w[Hernandez Garcia Martinez Lopez Gonzalez Perez Rodriguez Sanchez Ramirez Cruz Flores Gomez Morales Vazquez Reyes Jimenez Torres Diaz Gutierrez Ruiz Mendoza Aguilar Ortiz Moreno Castillo Romero Alvarez Mendez Chavez Rivera]

# @i = 20000
# while(@i <= 23000) do
#   first_name = @first_name_woman[rand(78)]
#   second_name = @second_name_woman[rand(88)]
#   last_name = @last_name[rand(31)]
#   second_last_name = @second_last_name[rand(31)]
#   Patient.create( id: @i,
#                   name: first_name,
#                   second_name: second_name,
#                   last_name: last_name,
#                   second_last_name: second_last_name,
#                   birth_date: "#{rand(1962..2015)}-#{rand(1..12)}-#{rand(1..28)} 17:00:00 UTC",
#                   phone: "#{rand(900000000..999999999)}",
#                   email: "#{first_name}.#{last_name}.#{second_last_name}@gmail.com",
#                   password: "123456",
#                   height: rand(110..200).to_f, observations: "Creation Patient")
#   @i+=1
# end

# Create User team for the company
# User.create(id: 1,
# 						name: 'Javier Andres',
#             last_name: 'Bellarta Sotelo',
#             birth_date: "#{rand(1977..2002)}-#{rand(1..12)}-#{rand(1..28)} 17:00:00 UTC",
#             phone: '+56975654656',
#             email: 'Javier.bellarta@nutricheck.com',
#             password: '123456',
#             role: 'administrator',
#             speciality_id: 1)

# User.create(id: 2,
# 						name: 'Carlos Daniel',
#             last_name: 'Salgado Moreno',
#             birth_date: "#{rand(1977..2002)}-#{rand(1..12)}-#{rand(1..28)} 17:00:00 UTC",
#             phone: '+56975654656',
#             email: 'carlos.salgado@nutricheck.com',
#             password: '123456',
#             role: 'manager',
#             speciality_id: 1)

# User.create(id: 3,
# 						name: 'Marcelo Cristobal',
#             last_name: 'Delgado Hermosilla',
#             birth_date: "#{rand(1977..2002)}-#{rand(1..12)}-#{rand(1..28)} 17:00:00 UTC",
#             phone: '+56975666744',
#             email: 'marcelo.delgado@nutricheck.com',
#             password: '123456',
#             role: 'manager',
#             speciality_id: 1)

# User.create(id: 4,
# 						name: 'Susana Veronica',
#             last_name: 'Bravo Santander',
#             birth_date: "#{rand(1977..2002)}-#{rand(1..12)}-#{rand(1..28)} 17:00:00 UTC",
#             phone: '+56975456787',
#             email: 'susana.bravo@nutricheck.com',
#             password: '123456',
#             role: 'professional',
#             speciality_id: 2)

# User.create(id: 5,
# 						name: 'Carla Macarena',
#             last_name: 'Mateluna Santis',
#             birth_date: "#{rand(1977..2002)}-#{rand(1..12)}-#{rand(1..28)} 17:00:00 UTC",
#             phone: '+56975456787',
#             email: 'carla.mateluna@nutricheck.com',
#             password: '123456',
#             role: 'professional',
#             speciality_id: 3)

# User.create(id: 6,
# 						name: 'Oscar Alejandro',
#             last_name: 'Cerda Orostica',
#             birth_date: "#{rand(1977..2002)}-#{rand(1..12)}-#{rand(1..28)} 17:00:00 UTC",
#             phone: '+56975456787',
#             email: 'oscar.carda@nutricheck.com',
#             password: '123456',
#             role: 'professional',
#             speciality_id: 2)

# User.create(id: 7,
# 						name: 'Mariano Hernan',
#             last_name: 'Villegas Solari',
#             birth_date: "#{rand(1977..2002)}-#{rand(1..12)}-#{rand(1..28)} 17:00:00 UTC",
#             phone: '+56975456787',
#             email: 'mariano.villegas@nutricheck.com',
#             password: '123456',
#             role: 'professional',
#             speciality_id: 3)

# User.create(id: 8,
# 						name: 'Amelia Josefina',
#             last_name: 'Zapata Soteldo',
#             birth_date: "#{rand(1977..2002)}-#{rand(1..12)}-#{rand(1..28)} 17:00:00 UTC",
#             phone: '+56975456787',
#             email: 'amelia.zapata@nutricheck.com',
#             password: '123456',
#             role: 'professional',
#             speciality_id: 4)

# User.create(id: 9,
# 						name: 'Berta Cecilia',
#             last_name: 'Coronado Salazar',
#             birth_date: "#{rand(1977..2002)}-#{rand(1..12)}-#{rand(1..28)} 17:00:00 UTC",
#             phone: '+56975456787',
#             email: 'berta.coronado@nutricheck.com',
#             password: '123456',
#             role: 'professional',
#             speciality_id: 2)

# User.create(id: 10,
# 						name: 'Gonzalo Amador',
#             last_name: 'Beltran Sanhueza',
#             birth_date: "#{rand(1977..2002)}-#{rand(1..12)}-#{rand(1..28)} 17:00:00 UTC",
#             phone: '+56975456787',
#             email: 'gonzalo.beltran@nutricheck.com',
#             password: '123456',
#             role: 'professional',
#             speciality_id: 4)

# User.create(id: 11,
# 						name: 'Mileidy Beatriz',
#             last_name: 'Corvalan Achao',
#             birth_date: "#{rand(1977..2002)}-#{rand(1..12)}-#{rand(1..28)} 17:00:00 UTC",
#             phone: '+56975456787',
#             email: 'mileidy.corvalan@nutricheck.com',
#             password: '123456',
#             role: 'professional',
#             speciality_id: 3)

# User.create(id: 12,
# 						name: 'Paola Andrea',
#             last_name: 'Salazar Ahumada',
#             birth_date: "#{rand(1977..2002)}-#{rand(1..12)}-#{rand(1..28)} 17:00:00 UTC",
#             phone: '+56975456787',
#             email: 'paola.salazar@nutricheck.com',
#             password: '123456',
#             role: 'professional',
#             speciality_id: 2)

# To create appointments you can run the following code.
# start_date = Date.new(2022, 07, 01)
# end_date = Date.new(2022, 07, 30)
# while (start_date <= end_date) do
# 	i = 9
# 	if (start_date.strftime("%A") != 'Sunday')
# 		if (i < 18)
# 			while (i < 18) do
# 				Appointment.create(date_time: "#{start_date} #{i}:00:00 UTC", reason: 'Consulta por sobrepeso', status: 'open', payment_status: false, score: nil, review: nil, service_id: 1, user_id: 12, patient_id: rand(5929) )
# 				# Appointment.create(date_time: "#{start_date} #{i}:00:00 UTC", reason: 'Consulta por sobrepeso', status: 'open', payment_status: false, score: nil, review: nil, service_id: 2, user_id: 5, patient_id: rand(5929) )
# 				# Appointment.create(date_time: "#{start_date} #{i}:00:00 UTC", reason: 'Consulta por sobrepeso', status: 'open', payment_status: false, score: nil, review: nil, service_id: 5, user_id: 6, patient_id: rand(5929) )
# 				# Appointment.create(date_time: "#{start_date} #{i}:00:00 UTC", reason: 'Consulta por sobrepeso', status: 'open', payment_status: false, score: nil, review: nil, service_id: 4, user_id: 7, patient_id: rand(5929) )
# 				# Appointment.create(date_time: "#{start_date} #{i}:00:00 UTC", reason: 'Consulta por sobrepeso', status: 'open', payment_status: false, score: nil, review: nil, service_id: 3, user_id: 8, patient_id: rand(5929) )
# 				i+=1
# 			end
# 		else
# 			i = 9
# 		end
# 	end
# 	start_date += 1
# end

# User.all.map do |user|
#   if (user.speciality.name == "Massage Therapist")
#     License.create(name: "Expert Massage Therapist License", number: rand(1000000..9000000), user_id: user.id)
#   elsif (user.speciality.name == "Nutriologist")
#     License.create(name: "Doctor Nutriologist License", number: rand(1000000..9000000), user_id: user.id)
#   elsif (user.speciality.name == "Personal Trainer")
#     License.create(name: "Expert Personal Trainer License", number: rand(1000000..9000000), user_id: user.id)
#   end
# end
# room = 5
# start_date = '2022-08-01'.to_date
# end_date = '2022-08-31'.to_date
# scheduler = { 'Monday' => [9, 17],
#               'Tuesday' => [9, 18],
#               'Wednesday' => [9, 18],
#               'Thursday' => [9, 19],
#               'Friday' => [9, 20],
#               'Saturday' => [10, 21],
#               'Sunday' => [10, 14] }


# while(start_date <= end_date)
#   if start_date.monday?
#     if !(scheduler["Monday"].first).nil?
#       start_time = scheduler["Monday"].first
#       while start_time < scheduler["Monday"].last
#         room.times do
#           Slot.create(start_time: "#{start_date} #{start_time}:00:00 UTC")
#         end
#         start_time += 1
#       end
#     end
#   elsif start_date.tuesday?
#     if !(scheduler["Tuesday"].first).nil?
#       start_time = scheduler["Tuesday"].first
#       while start_time < scheduler["Tuesday"].last
#         room.times do
#           Slot.create(start_time: "#{start_date} #{start_time}:00:00 UTC")
#         end
#         start_time += 1
#       end
#     end
#   elsif start_date.wednesday?
#     if !(scheduler["Wednesday"].first).nil?
#       start_time = scheduler["Wednesday"].first
#       while start_time < scheduler["Wednesday"].last
#         room.times do
#           Slot.create(start_time: "#{start_date} #{start_time}:00:00 UTC")
#         end
#         start_time += 1
#       end
#     end
#   elsif start_date.thursday?
#     if !(scheduler["Thursday"].first).nil?
#       start_time = scheduler["Thursday"].first
#       while start_time < scheduler["Thursday"].last
#         room.times do
#           Slot.create(start_time: "#{start_date} #{start_time}:00:00 UTC")
#         end
#         start_time += 1
#       end
#     end
#   elsif start_date.friday?
#     if !(scheduler["Friday"].first).nil?
#       start_time = scheduler["Friday"].first
#       while start_time < scheduler["Friday"].last
#         room.times do
#           Slot.create(start_time: "#{start_date} #{start_time}:00:00 UTC")
#         end
#         start_time += 1
#       end
#     end
#   elsif start_date.saturday?
#     if !(scheduler["Saturday"].first).nil?
#       start_time = scheduler["Saturday"].first
#       while start_time < scheduler["Saturday"].last
#         room.times do
#           Slot.create(start_time: "#{start_date} #{start_time}:00:00 UTC")
#         end
#         start_time += 1
#       end
#     end
#   elsif start_date.sunday?
#     if !(scheduler["Sunday"].first).nil?
#       start_time = scheduler["Sunday"].first
#       while start_time < scheduler["Sunday"].last
#         room.times do
#           Slot.create(start_time: "#{start_date} #{start_time}:00:00 UTC")
#         end
#         start_time += 1
#       end
#     end

#   end
#   start_date += 1
# end