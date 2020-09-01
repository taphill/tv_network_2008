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

  # WIP: could not finish
  def shows_by_actor
    x = get_all_actors.each do |actor|
      actors_shows = []

      shows.each do |show|
        inlcudes_actor = show.characters.any? do |char|
            char.actor == "David Hasselhoff"
        end
        actors_shows << show if inlcudes_actor
      end
    end
require 'pry'; binding.pry
x
  end

  private

  def get_all_actors
    all_actors = shows.map(&:characters).flatten

    all_actors.map(&:actor).uniq
  end
end
