namespace :utils do
  
  desc "Popula o banco com admininstradores FAKER"
  task create_admins: :environment do
    puts "Cadastrando administradores FAKER..."

      10.times do 
      Admin.create!(email:Faker::Internet.email,
                 password:"123456", 
                 password_confirmation:"123456")
      end           
    puts "Administradores FAKER cadastrados com sucesso!!!"
  end

end
