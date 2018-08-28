require_relative 'config/environment'

class App < Sinatra::Base
  get "/" do
    erb :user_input
  end
  post "/piglatinize" do
    input = params[:user_phrase]
    new_pig = PigLatinizer.new
    @pig_lat = new_pig.piglatinize(input)
    erb :result
  end
end
