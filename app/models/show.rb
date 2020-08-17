class Show < ActiveRecord::Base
  has_many :characters

  def actors_list
    self.characters.actors.collect do |actor|
      "#{actor.first_name} #{actor.last_name}"
    end
  end
end
