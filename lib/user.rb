class User
    attr_accessor :email, :age
    @@all_users = [] # Array qui regroupe tous les utlisateurs
    
    def initialize(email_to_save, age_to_save)
        @email = email_to_save
        @age = age_to_save
        @@all_users.push(*email_to_save, age_to_save) # On créé cette ligne pour ajouter un nouvel utilisateur dans l'array @@all_users (ne pas oublier *)
    end

    def self.all
        return @@all_users
    end
end

# julie = User.new("julie@email.com", 32)
# jean = User.new("jean@email.com", 56)