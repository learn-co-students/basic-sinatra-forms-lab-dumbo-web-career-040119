require 'sinatra/base'

class App < Sinatra::Base

  get ('/newteam') {
    erb :newteam
  }

  post ('/team') {
    @name = params[:name]
    @coach = params[:coach]
    @pg = params[:pg]
    @sg = params[:sg]
    @pf = params[:pf]
    @sf = params[:sf]
    @c = params[:c]
    erb :team
  }
end


# In the post method above, we need to assign the values in the "params" hash to instance variables so that they can be accessed in the team.erb file.
