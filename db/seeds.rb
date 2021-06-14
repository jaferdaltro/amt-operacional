Role.create(name: 'admin')
Role.create(name: 'supervisor')
Role.create(name: 'rh')
Role.create(name: 'agent')

Team.create(name: 'A')
Team.create(name: 'B')
Team.create(name: 'C')
Team.create(name: 'D')
Team.create(name: 'Administrativo')
Team.create(name: 'Outras Secretarias')

User.create!(username:"Martins", name: "ADABERON MARTINS MOREIRA", team_id: 4,:registration=>"51934", :password=>"123456", :password_confirmation=>"123456")
User.create!(username:"Adriano", name: "ADRIANO ARAÚJO MAGALHÃES",team_id: 3, :registration=>"13953", :password=>"123456", :password_confirmation=>"123456")
User.create!(username:"Antonino ", name: "ANTONINO DA SILVA CALISTO FILHO", team_id: 4, :registration=>"15301", :password=>"123456", :password_confirmation=>"123456")
User.create!(username:"Aguiar", name: "CÉSAR PESSOA DE AGUIAR", team_id: 1,:registration=>"12415", :password=>"123456", :password_confirmation=>"123456")
User.create!(username:"Douglas", name: "CICERO DOUGLAS NASCIMENTO DE ABREU",team_id: 4, :registration=>"51926", :password=>"123456", :password_confirmation=>"123456")
User.create!(username:"Daniel", name: "DANIEL MARCONDES ARAÚJO", team_id: 4,:registration=>"13948", :password=>"123456", :password_confirmation=>"123456")
User.create!(username:"Edilberto", name: "FRANCISCO EDILBERTO RODRIGUES DE FARIAS",team_id: 2, :registration=>"55334", :password=>"123456", :password_confirmation=>"123456")
User.create!(username:"Eliomar", name: "FRANCISCO ELIOMAR MELO",team_id: 4, :registration=>"55333", :password=>"123456", :password_confirmation=>"123456")
User.create!(username:"Walber", name: "FRANCISCO WALBER SOARES ARAÚJO", team_id: 5, :registration=>"12420", :password=>"123456", :password_confirmation=>"123456")
User.create!(username:"Vieira", name: "IOODROWILLIAMES ALVES VIEIRA", team_id: 3,:registration=>"55332", :password=>"123456", :password_confirmation=>"123456")
User.create!(username:"Daltro", name: "JAFER DALTRO POMPEU JÚNIOR", team_id: 4,:registration=>"39864", :password=>"123456", :password_confirmation=>"123456")
User.create!(username:"Joheldes", name: "JOHELDES SOUSA DA SILVA",team_id: 2, :registration=>"15298", :password=>"123456", :password_confirmation=>"123456")
User.create!(username:"Loiola", name: "JOSÉ WASHINGTON LOIOLA",team_id: 2, :registration=>"55331", :password=>"123456", :password_confirmation=>"123456")
User.create!(username:"Marcos", name: "MARCOS ANTÔNIO MOREIRA DO NASCIMENTO",team_id: 4, :registration=>"55329", :password=>"123456", :password_confirmation=>"123456")
User.create!(username:"Iliany", name: "MARIA ILIANY RIBEIRO MARINHO",  team_id: 6,:registration=>"51934", :password=>"123456", :password_confirmation=>"123456")
User.create!(username:"Mieli", name: "MIELI DE GOES BARROS",team_id: 2, :registration=>"13953", :password=>"123456", :password_confirmation=>"123456")
User.create!(username:"Mara ", name: "PATRÍCIA MARA DANTAS DA ROCHA",team_id: 2, :registration=>"15301", :password=>"123456", :password_confirmation=>"123456")
User.create!(username:"Raquel", name: "RAQUEL FARIAS DE MELO",  team_id: 5,:registration=>"12415", :password=>"123456", :password_confirmation=>"123456")
User.create!(username:"Rogerson", name: "ROGERSON HERACLITO GOMES FERREIRA",team_id: 4, :registration=>"13948", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Alden',name: "ALDEN CHRISTIAN PINHEIRO DE BARROS", team_id: 6, :registration=>"39827", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Diniz',name: "ALEX DINIZ GONÇALVES SILVA",  team_id: 5,:registration=>"39743", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Anderson',name: "ANDERSON FORTE DE MENEZES",team_id: 2, :registration=>"12411", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Josino',name: "ANDRÉ DO NASCIMENTO JOSINO",team_id: 1, :registration=>"12408", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'André',name: "ANDRÉ PINHEIRO DE LIMA",team_id: 1, :registration=>"12409", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Lopes',name: "ANTONIO ANDERSON LOPES BARRETO",team_id: 1, :registration=>"51933", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Fernandes',name: "CARLOS FERNANDES CASTRO SILVA", team_id: 3,:registration=>"39835", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Carlos',name: "CARLOS SILVA CORREA",team_id: 1, :registration=>"39839", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Moreira',name: "DARLAN LUIS MOREIRA DA COSTA",  team_id: 5,:registration=>"39842", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Érico',name: "ERICO GUSTAVO MATIAS GOIS",team_id: 1, :registration=>"51931", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Mesquita',name: "ERMANDO MESQUITA SOARES", team_id: 3,:registration=>"55338", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Ezequiel',name: "EZEQUIEL DA SILVA MORAIS",team_id: 2, :registration=>"39845", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Fabiano',name: "FABIANO PEREIRA DA SILVA GOMES",team_id: 1, :registration=>"51928", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Fernando',name: "FERNANDO OLIVEIRA DE ARAÚJO", team_id: 4,:registration=>"55337", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Marcelo',name: "FLÁVIO MARCELO VIEIRA ALVES",team_id: 1, :registration=>"55336", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Érica',name: "FRANCISCA ERICA DE SOUSA",team_id: 2, :registration=>"51923", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Marcileide',name: "FRANCISCA MARCILEIDE DA SILVA FERREIRA",team_id: 1, :registration=>"55335", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Cicero',name: "FRANCISCO CICERO MARTINS DA ROCHA", team_id: 3,:registration=>"51924", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Djalma',name: "FRANCISCO DJALMA SANTOS DA SILVA", team_id: 3,:registration=>"12419", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Gomes',name: "FRANCISCO ERICO GOMES SIQUEIRA", team_id: 3,:registration=>"39847", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Sales',name: "FRANCISCO THIAGO SALES ROCHA",team_id: 2, :registration=>"51936", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Germano',name: "GERMANO DA ROCHA SIQUEIRA",  team_id: 6,:registration=>"12421", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Helder',name: "HELDER DAS CHAGAS VIEIRA",team_id: 1, :registration=>"39850", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Irlene',name: "IRLENE DA SILVA XAVIER",team_id: 2, :registration=>"12424", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Allen',name: "ISRAEL ALLEN DE SOUZA GIRÃO",team_id: 2, :registration=>"39852", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Italo',name: "ITALO OLIVEIRA LIMA",team_id: 3, :registration=>"39854", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Ivan',name: "IVAN FERNANDES DE OLIVEIRA FILHO",team_id: 2, :registration=>"39856", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Vicente',name: "JOÃO VICENTE GONÇALVES DE LIMA",team_id: 2, :registration=>"47745", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Silas',name: "JONH SILAS DA SILVA NASCIMENTO", team_id: 2,:registration=>"13937", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Laércio',name: "JOSÉ LAÉRCIO ROCHA SANTOS", team_id: 3,:registration=>"12429", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Josinaldo',name: "JOSINALDO DE VASCONCELOS",team_id: 4, :registration=>"55330", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Desiree',name: "KARMEM DESIREE PINHEIRO MARTINS", team_id: 3,:registration=>"13935", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Leonardo',name: "LEONARDO ARAÚJO MAGALHÃES", team_id: 3,:registration=>"13946", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Ventura',name: "MANOEL FERNANDES VENTURA NETO", team_id: 1,:registration=>"55339", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Fonteles',name: "MARCELO ARAÚJO FONTELES", team_id: 1,:registration=>"12436", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Holanda',name: "MÁRCIO HOLANDA DODT FILHO",  team_id: 6,:registration=>"39870", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Marley',name: "MÁRCIO MARLEY RODRIGUES GOUVEIA", team_id: 1,:registration=>"12440", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Milton',name: "MILTON ALVES DO NASCIMENTO JÚNIOR",  team_id: 6,:registration=>"39827", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Miria',name: "MIRIA NASCIMENTO DA SILVA", team_id: 4,:registration=>"39743", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Mirislândia',name: "MIRISLANDIA SALMITO CAMPOS", team_id: 1,:registration=>"12411", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Naiana',name: "NAIANA PAULA DE AZEVEDO PONTES", team_id: 1,:registration=>"12408", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Patrícia',name: "PATRICIA HENRIQUE MOTA", team_id: 1,:registration=>"12409", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Pedro Forte',name: "PEDRO JACINTO FIRMINO FORTE", team_id: 2,:registration=>"51933", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Rafael',name: "RAFAEL CAMINHA JERÔNIMO", team_id: 3,:registration=>"39835", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Diego',name: "RAIMUNDO DIEGO LIMA LOURENÇO",  team_id: 6,:registration=>"51929", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Lima',name: "RÔMULO FERNANDES LIMA", team_id: 4,:registration=>"55341", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Sidney',name: "SIDNEY SOUZA DE ALMEIDA",team_id: 4, :registration=>"39876", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Tárcila',name: "TÁRCILA SANTIAGO VASCONCELOS", team_id: 3,:registration=>"39877", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Tarcísio',name: "TARCÍSIO CORREIA LIMA PEREIRA",team_id: 3, :registration=>"39880", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Costa',name: "THIAGO COELHO COSTA",team_id: 4, :registration=>"55343", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Patrício',name: "THIAGO MARCOLINO PATRICIO DE OLIVEIRA",team_id: 4, :registration=>"55344", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Rômulo',name: "THIAGO RÔMULO LIMA LUCAS", team_id: 3,:registration=>"39878", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Lacerda',name: "TIAGO LACERDA MACIEL", team_id: 3,:registration=>"39879", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Tito',name: "TITO TAVARES CAVALCANTI JÚNIOR",  team_id: 6,:registration=>"15299", :password=>"123456", :password_confirmation=>"123456")
User.create!(username: 'Wesley',name: "WESLEY JOSÉ PEREIRA RODRIGUES", team_id: 2,:registration=>"55345", :password=>"123456", :password_confirmation=>"123456")


User.find_by(username: 'daltro').user_roles.build(role_id: 1).save
User.find_by(username: 'douglas').user_roles.build(role_id: 1).save
User.find_by(username: 'walber').user_roles.build(role_id: 1).save 

User.all.each do |user|
  user.user_roles.build(role_id: 4).save
end


Car.create(vtr:'VT-08', licence_plate: 'PMT-4232', owner: 'AMT', brand: 'Volkswagem', model: 'GOL')
Car.create(vtr:'VT-09', licence_plate: 'PMT-4192', owner: 'AMT', brand: 'Volkswagem', model: 'GOL')
Car.create(vtr:'VT-01', licence_plate: 'OZA-9831', owner: 'AMT', brand: 'Volkswagem', model: 'Amarok')
Car.create(vtr:'VT-07', licence_plate: 'PMT-4182', owner: 'AMT', brand: 'Volkswagem', model: 'GOL')
Car.create(vtr:'VT-10', licence_plate: 'POX-4726', owner: 'AMT', brand: 'TROLLER', model: 'T4 XLP 3.2')
Car.create(vtr:'VT-11', licence_plate: 'POX-4726', owner: 'AMT', brand: 'TROLLER', model: 'T4 XLP 3.2')
Car.create(vtr:'MT-01', licence_plate: 'PNU9G09', owner: 'AMT', brand: 'YAMAHA', model: 'XTZ250/LANDER')
Car.create(vtr:'MT-02', licence_plate: 'PNU9C59', owner: 'AMT', brand: 'YAMAHA', model: 'XTZ250/LANDER')
Car.create(vtr:'MT-03', licence_plate: 'PNV4G19', owner: 'AMT', brand: 'YAMAHA', model: 'XTZ250/LANDER')
Car.create(vtr:'MT-04', licence_plate: 'POX1D03', owner: 'AMT', brand: 'YAMAHA', model: 'XTZ250/LANDER')
Car.create(vtr:'MT-05', licence_plate: 'POW8D03', owner: 'AMT', brand: 'YAMAHA', model: 'XTZ250/LANDER')
Car.create(vtr:'MT-06', licence_plate: 'POX0B23', owner: 'AMT', brand: 'YAMAHA', model: 'XTZ250/LANDER')
Car.create(vtr:'MT-07', licence_plate: 'POW2H63', owner: 'AMT', brand: 'YAMAHA', model: 'XTZ250/LANDER')
Car.create(vtr:'MT-08', licence_plate: 'POW5F73', owner: 'AMT', brand: 'YAMAHA', model: 'XTZ250/LANDER')
Car.create(vtr:'MT-09', licence_plate: 'POW7D13', owner: 'AMT', brand: 'YAMAHA', model: 'XTZ250/LANDER')
Car.create(vtr:'MT-011', licence_plate: 'POW3F03', owner: 'AMT', brand: 'YAMAHA', model: 'XTZ250/LANDER')
Car.create(vtr:'MT-013', licence_plate: 'POV9C23', owner: 'AMT', brand: 'YAMAHA', model: 'XTZ250/LANDER')
Car.create(vtr:'MT-014', licence_plate: 'POX0I93', owner: 'AMT', brand: 'YAMAHA', model: 'XTZ250/LANDER')
Car.create(vtr:'MT-015', licence_plate: 'POW4F43', owner: 'AMT', brand: 'YAMAHA', model: 'XTZ250/LANDER')
Car.create(vtr:'MT-016', licence_plate: 'POW2C43', owner: 'AMT', brand: 'YAMAHA', model: 'XTZ250/LANDER')
Car.create(vtr:'MT-017', licence_plate: 'POW8G23', owner: 'AMT', brand: 'YAMAHA', model: 'XTZ250/LANDER')
Car.create(vtr:'MT-018', licence_plate: 'POW8E93', owner: 'AMT', brand: 'YAMAHA', model: 'XTZ250/LANDER')
Car.create(vtr:'MT-019', licence_plate: 'POW5A03', owner: 'AMT', brand: 'YAMAHA', model: 'XTZ250/LANDER')
Car.create(vtr:'MT-020', licence_plate: 'POW8I63', owner: 'AMT', brand: 'YAMAHA', model: 'XTZ250/LANDER')
Car.create(vtr:'MT-21', licence_plate: 'POP-3298', owner: 'AMT', brand: 'HONDA', model: 'XRE300')
Car.create(vtr:'REBOQUE', licence_plate: 'OHX-3020', owner: 'AMT', brand: 'VOLKSWAGEM', model: 'VW/8 160 DRC 4X2')
Car.create(vtr:'ADM', licence_plate: 'POH-6428', owner: 'AMT', brand: 'VOLKSWAGEM', model: 'VW VOYAGE/8')
Car.create(vtr:'ADM', licence_plate: 'POH-6438', owner: 'AMT', brand: 'VOLKSWAGEM', model: 'VW VOYAGE/8')

itemsC = ["farol baixo", "farol alto", "buzina", "luz de freio", "luz de posição", "luz de posição traseira",
 "luz de placa", "funcionamento do painel", "luzes indicadoras de mudança de direção", "sirene",
"retrovisores", "pisca-alerta", "luz de posição dianteira", "luz intermitente(giroflex)","estepe/chave de roda/macaco", "luz de ré"]

itemM = [
  "LUZ INTERMITENTE (GIROFLEX)",
"FAROL BAIXO",
"FAROL ALTO",
"BUZINA",
"LUZ DE FREIO",
"LUZ DE POSIÇÃO TRASEIRA",
"FUNCIONAMENTO DO PAINEL",
"LUZES INDICADORAS DE MUDANÇA DE DIREÇÃO",
"SIRENE",
"PORTA OBJETOS",
"RETROVISORES",
"ESTADO DE CONSERVAÇÃO DO PNEU"

]

Car.all.each do |car|
  if (car.model == "GOL" || car.model == "TROLLER" || car.model == "Amarok") 
    itemsC.each do |item|
      Item.create!(description: item, car_id: car.id )
      puts "Inserido item em carro.."
    end
  else
    itemM.each do |item|
      Item.create!(description: item, car_id: car.id)
      puts "Inserido item em moto.."
    end
  end  
end