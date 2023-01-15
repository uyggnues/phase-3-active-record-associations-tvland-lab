require 'pry'
require_relative '../../config/environment'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  validates :first_name, presence: true

    def full_name
        self.first_name + " " + self.last_name
    end

    def list_roles
        # binding.pry
        self.characters.map {|c| "#{c.name} - #{c.show.name}"}
    end
end