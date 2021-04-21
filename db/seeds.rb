# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name:'jafer', email:'jaferjr@gmail.com', password:'pompeu76', password_confirmation:'pompeu76')
Vehicle.create(kind: 'car', active: true, model:'Gol', brand:'volkswagen', licence_plate: 'HKE-9876', vtr_number: '01')
Vehicle.create(kind: 'car', active: true, model:'Gol', brand:'volkswagen', licence_plate: 'HKE-9844', vtr_number: '02')
Vehicle.create(kind: 'car', active: true, model:'Gol', brand:'volkswagen', licence_plate: 'HKE-3333', vtr_number: '03')


CheckList.create(title:'Carros', beggin_km: 1, end_km: 89, user_id: User.first.id, date: Time.zone.now, vehicle_id: Vehicle.first.id )

CheckListItem.create(description: 'pneu', beggin_check: true, end_check: true, check_list_id: CheckList.first.id)
CheckListItem.create(description: 'pala', beggin_check: true, end_check: true, check_list_id: CheckList.first.id)
CheckListItem.create(description: 'luz alta', beggin_check: false, end_check: true, check_list_id: CheckList.first.id)
CheckListItem.create(description: 'luz baixa', beggin_check: true, end_check: true, check_list_id: CheckList.first.id)
CheckListItem.create(description: 'luz de freio', beggin_check: true, end_check: true, check_list_id: CheckList.first.id)
CheckListItem.create(description: 'luz de posição', beggin_check: true, end_check: true, check_list_id: CheckList.first.id)
CheckListItem.create(description: 'luz interna', beggin_check: true, end_check: true, check_list_id: CheckList.first.id)
CheckListItem.create(description: 'extintor', beggin_check: true, end_check: true, check_list_id: CheckList.first.id)
CheckListItem.create(description: 'painel', beggin_check: true, end_check: true, check_list_id: CheckList.first.id)
CheckListItem.create(description: 'óleo do motor', beggin_check: true, end_check: true, check_list_id: CheckList.first.id)
