Rails.application.routes.draw do

get '/' => 'pages#index'

get '/home' => 'pages#show'

get '/sign_up' => 'authentication#create'

# get '/signon' => 

end
