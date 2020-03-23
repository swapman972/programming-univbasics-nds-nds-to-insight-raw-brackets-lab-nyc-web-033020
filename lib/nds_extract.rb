$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  #pp directors_database
  
  count_for_director = 0
  while count_for_director < nds.length do
    total_gross = 0
    count_for_movies = 0
    while count_for_movies < directors_database[count_for_director][:movies].length do
      total_gross += (directors_database[count_for_director][:movies][count_for_movies][:worldwide_gross])
      count_for_movies += 1
    end
    result[directors_database[count_for_director][:name]] = total_gross
    count_for_director += 1
  end
  result
end
