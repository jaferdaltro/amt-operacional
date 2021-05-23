users = [
  {name: 'Aguiar', email:'aguiar@teste.com', admin: false, registration:'12415', score: 0, agent: true, supervisor: true, alias:'Aguiar', password: '123456', password_confirmation: '123456'},
  {name: 'Adriano Araújo Magalhães', email:'adriano@teste.com', admin: false, registration:'13953', score: 0, agent: true, supervisor: true, alias:'Aguiar', password: '123456', password_confirmation: '123456'},
  {name: 'Antonino da Silva Calisto Filho ', email:'antonino@teste.com', admin: false, registration:'15301', score: 0, agent: true, supervisor: false, alias:'Antonino ', password: '123456', password_confirmation: '123456'},
  {name: 'Marcolino', email:'marcolino@teste.com', admin: false, registration:'', score: 0, agent: true, supervisor: false, alias:'', password: '123456', password_confirmation: '123456'},
  {name: 'Miria', email:'miria@teste.com', admin: false, registration:'', score: 0, agent: true, supervisor: false, alias:'Miria', password: '123456', password_confirmation: '123456'},
  {name: 'Lima', email:'lima@teste.com', admin: false, registration:'55341', score: 0, agent: true, supervisor: false, alias:'Lima', password: '123456', password_confirmation: '123456'},
  {name: 'Edilberto', email:'edilberto@teste.com', admin: false, registration:'55334', score: 0, agent: true, supervisor: false, alias:'Edilberto', password: '123456', password_confirmation: '123456'},
  {name: 'Rogerson Heraclito Gomes Ferreira', email:'rogerson@teste.com', admin: false, registration:'39874', score: 0, agent: true, supervisor: false, alias:'Rogerson', password: '123456', password_confirmation: '123456'},
  {name: 'Fernando', email:'fernando@teste.com', admin: false, registration:'', score: 0, agent: true, supervisor: false, alias:'', password: '123456', password_confirmation: '123456'},
  {name: 'Costa', email:'costa@teste.com', admin: false, registration:'55343', score: 0, agent: true, supervisor: false, alias:'Costa', password: '123456', password_confirmation: '123456'},
  {name: 'Walber', email:'walber@teste.com', admin: true, registration:'12420', score: 0, agent: true, supervisor: false, alias:'Walber', password: '123456', password_confirmation: '123456'},
  {name: 'Daniel Marcondes Araújo ', email:'daniel@teste.com', admin: false, registration:'13948', score: 0, agent: true, supervisor: true, alias:'Daniel', password: '123456', password_confirmation: '123456'},
  {name: 'Sidney', email:'sidney@teste.com', admin: false, registration:'', score: 0, agent: true, supervisor: false, alias:'', password: '123456', password_confirmation: '123456'},
  {name: 'Cícero Douglas Nascimento de Abreu', email:'douglas@teste.com', admin: true, registration:'51926', score: 0, agent: true, supervisor: false, alias:'Douglas', password: '123456', password_confirmation: '123456'},
  {name: 'Marcos', email:'marcos@teste.com', admin: false, registration:'55329', score: 0, agent: true, supervisor: false, alias:'Marcos', password: '123456', password_confirmation: '123456'},
  {name: 'Adaberon Martins Moreira', email:'beronmartins@gmail.com', admin: false, registration:'51934', score: 0, agent: true, supervisor: false, alias:'Martins', password: '123456', password_confirmation: '123456'},
  {name: 'Josinaldo', email:'josinaldo@teste.com', admin: false, registration:'55330', score: 0, agent: true, supervisor: false, alias:'Josinaldo', password: '123456', password_confirmation: '123456'},
  {name: 'Eliomar', email:'eliomar@teste.com', admin: false, registration:'55333', score: 0, agent: true, supervisor: false, alias:'Eliomar', password: '123456', password_confirmation: '123456'},
  {name: 'Loiola', email:'loiola@teste.com', admin: false, registration:'55331', score: 0, agent: true, supervisor: false, alias:'Loiola', password: '123456', password_confirmation: '123456'},
  {name: 'Vieira', email:'vieira@teste.com', admin: false, registration:'55332', score: 0, agent: true, supervisor: false, alias:'Vieira', password: '123456', password_confirmation: '123456'},
  {name: 'Joheldes', email:'joheldes@teste.com', admin: false, registration:'15298', score: 0, agent: true, supervisor: true, alias:'Joheldes', password: '123456', password_confirmation: '123456'},
  {name: 'Tárcila', email:'tarcila@teste.com', admin: false, registration:'39877', score: 0, agent: true, supervisor: true, alias:'Tárcila', password: '123456', password_confirmation: '123456'},
  {name: 'Jafer Daltro Pompeu Jr', email:'jaferjr@gmail.com', admin: true, registration:'39864', score: 0, agent: true, supervisor: false, alias:'Daltro', password: '123456', password_confirmation: '123456'}
]

# users.each do |p|
#   puts p[:name]
# end
# cada = []
# file = File.open("tmp/restart.txt")
# file_data = file.readlines.map(&:chomp)

arquivo_matricula = File.open("matricula.txt")
linha_matricula = arquivo_matricula.readlines.map(&:chomp)
linha = []
linha_matricula.each do |lm|
  linha.push({name: '#{lm.scan(/[^\d]/).join('')}',registration: '#{lm.scan(/\d/).join('')}', password: '123456', password_confirmation: '123456'})
end

# if (linha[:registration].include?(users[:registration]))
#   puts linha.merge!(users)
# end 





# file_data.each do |l|
#   linha_matricula.each do |lm|
#       if lm.include? l
#         cada.push({name: lm.scan(/[^\d]/).join(''), registration: lm.scan(/\d/).join('')})
#       end
#   end
# end

# users.each do |k|
#   puts k[:alias]
# end

# {name: lm.scan(/[^\d]/).join(''), registration: lm.scan(/\d/).join('')}
# cada.each do |c|
#   users.each do |u|
#     if u[:registration].include? c[:registration] 
#       puts "User.create(alias:'#{u[:alias]}', name:'#{c[:name]}', registration: '#{c[:registration]}')"
#     end
#   end
# end

# c = cada + users 
# puts c - (cada & users)
