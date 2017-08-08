require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do #the ':' after hello indicates that this is a dynamc route
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get '/goodbye/:name' do
    @user_name_bye = params[:name]
    "Goodbye, #{@user_name_bye}."
  end

  get '/multiply/:num1/:num2' do
    @num_one = params[:num1]
    @num_two = params[:num2]
    # binding.pry
    (@num_one.to_i * @num_two.to_i).to_s
  end

  # Code your final two routes here:

end
