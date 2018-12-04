class Subscriptor < ApplicationRecord
   
    validates :name, :email, presence: true   # Esto es una validacion de presencia
end
