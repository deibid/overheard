class RatingsController < ApplicationController

  def new
  end

  def create
    puts "you hit me"
    puts "yo"
    puts "yo"
    puts "yo"
    puts "yo"
    puts "yo"
    puts "yo"
    puts "yo"
    puts "yo"
    puts "yo"
    puts params
    id =  params["podcastid"]
    relevance  = nil
     params["relevantrating"] == "yes" ? relevance = true : relevance = false
    stars = params["starvalue"]
    @podcast = Podcast.find(id)
    @rating = @podcast.ratings.build({relevant: relevance, stars: stars.to_i})
    @rating.save
    redirect_to root_path
  end
end
