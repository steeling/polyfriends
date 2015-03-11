module Polyfriends  
  class Root < Grape::API

    # load the rest of the API
    mount Polyfriends::Coaches
  end
end  