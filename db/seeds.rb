# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

puts 'Creating Users'
USERS = [
  { name: 'Tophs', email: 'ccelestial@stratpoint.com',  password: 'passw0rd' },
  { name: 'Eric',  email: 'econde@stratpoint.com',      password: 'passw0rd' },
  { name: 'Louie', email: 'lpastores@stratpoint.com',   password: 'passw0rd' }
]

User.create(
  USERS
)

puts 'Users Created'
