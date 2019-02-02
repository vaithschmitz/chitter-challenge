Rails.application.routes.draw do


get '/' => 'pages#index'

get '/home' => 'pages#show'


end
