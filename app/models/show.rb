class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network
    has_many :actors, through: :characters

    def actors_list
        # self.actors.map {|a| a.full_name}
        self.actors.map(&:full_name)
    end
end