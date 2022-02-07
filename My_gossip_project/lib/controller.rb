require 'gossip'

class ApplicationController < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/gossips/new/' do
    erb :new_gossip
  end

 post '/gossips/new/' do
  Gossip.new(les_entrées_du_gossip).save
end
end
