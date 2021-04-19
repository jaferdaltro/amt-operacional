# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name:'jafer', email:'jaferjr@gmail.com', password:'pompeu76', password_confirmation:'pompeu76')


CheckList.create(title:'Carros', beggin_km: 1, end_km: 89, user_id: User.first.id, date: Time.zone.now )

CheckListItem.create(description: 'rodas', beggin_check: true, end_check: true, check_list_id: CheckList.first.id)
