class TestApp < Sinatra::Base
  
  #get '/' do
  #end

  post '/' do
  end 

  # follow redirect from zig to zag; example starts with /zag, so we need some sort of if statement here
  get '/?:zig_or_zag?' do 
    redirect '/zag' if params[:zig_or_zag] == 'zig'
  end

  post '/profile' do
    "<h1>#{params[:name]}</h1><h2>#{params[:occupation]}</h2>"
    #"<h1>Gaius Baltar</h1><h2>Scientist</h2>"
  end

  get '/hello/:name' do 
    "Hello #{params[:name]}!"
  end

  # it 'returns the string "Hello #{name}!"' do
  #  get '/hello/Winston%20Churchill'

  get '/search' do
    # DO NOT MODIFY THIS!
    "#{params[:q]} #{params[:order]}"
  end

end
