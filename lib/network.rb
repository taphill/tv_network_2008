class Network
  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    shows << show
  end

  def main_characters
    main_characters = shows.map(&:characters)

    main_characters.flatten
  end

  def actors_by_show
    actors_by_show = {}

    shows.each do |show|
      actors = show.characters.map(&:actor)
      actors_by_show[show] = actors
    end

    actors_by_show
  end
end
