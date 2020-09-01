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
end
