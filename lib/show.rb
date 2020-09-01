class Show
  attr_reader :name, :creator, :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    characters.inject(0) do |sum, character|
      sum + character.salary
    end
  end

  def highest_paid_actor
    highest_paid_actor = characters.max_by do |character|
      character.salary
    end
    
    highest_paid_actor.actor
  end
end