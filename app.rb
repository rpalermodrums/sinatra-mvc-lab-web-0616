require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    # binding.pry
    @pig_latinizer = PigLatinizer.new
    @pig_latinizer.to_pig_latin(params['user_phrase'])
  end
end
