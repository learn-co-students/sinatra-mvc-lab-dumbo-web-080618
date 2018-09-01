require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pigla = PigLatinizer.new
    @piglatin = pigla.piglatinize(params[:user_phrase])
    erb :index
  end

end
