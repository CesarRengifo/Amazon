class Subscriptor < ApplicationRecord
   
    validates :name, :email, presence: true   # Esto es una validacion de presencia
  
  def capitalize_name
    self.name = self.name.capitalize
  end

end
