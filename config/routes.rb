Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/vendors', to: 'vendors#index'
  get '/vendors/:id', to: 'vendors#show'
  get '/sweets', to: 'sweets#index'
  get '/sweets/:id', to: 'sweets#show'
  post '/vendor_sweets', to: 'vendor_sweets#create'
  delete '/vendor_sweets/:id', to: 'vendor_sweets#destroy'
end

# ^^^^^^^^^^^^^^^^^^^^
# I don't know if I got the post & delete right in the controllers - about 5 minutes left as I write this and I'm prioritizing
# preserving what I have working over getting what I don't have right yet just to show my work rather than risk breaking everything right at the end.
# ^^^^^^^^^^^^^^^^^^^^