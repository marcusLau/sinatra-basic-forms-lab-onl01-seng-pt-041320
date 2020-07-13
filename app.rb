require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :index
    end

    get '/new' do 
        erb :create_puppy
    end

    post '/puppy' do 
        @puppy = Puppy.new(@params[:name], @params[:breed], @params[:age])

        erb :display_puppy
    end

end

# user goes to a home page
# follows a link to a form to enter Puppy's information 
# submit
# views the puppy's information 