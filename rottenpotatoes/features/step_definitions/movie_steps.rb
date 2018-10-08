Given /^the following movies exist:$/ do |movies_table|  
  # table is a Cucumber::MultilineArgument::DataTable
  # Write code here that turns the phrase above into concrete actions
  movies_table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

Then /^the director of "(.*)" should be "(.*)"$/ do |movie_name, movie_director|
  # Write code here that turns the phrase above into concrete actions
  movie = Movie.find_by_title(movie_name)
  # visit movie_path(movie)
  expect(movie.director).to eq movie_director
end

