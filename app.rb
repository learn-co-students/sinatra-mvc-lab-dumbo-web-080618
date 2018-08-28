require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @pig_class = PigLatinizer.new
    @pig_latinize = @pig_class.piglatinize(params[:user_phrase])
    erb :result
  end

end


# "eHay asway anway oldway anmay owhay ishedfay aloneway inway away iffskay inway ethay ulfGay reamStay andway ehay adhay onegay eightyway ourfay aysday ownay ithoutway akingtay away ishfay"
#
# "eHay asway anway oldway anmay owhay ishedfay aloneway inway away iffskay inway ethay ulfGay eamStray andway ehay adhay onegay eightyway ourfay aysday ownay ithoutway akingtay away ishfay"
