require 'byebug'
module Polyfriends
	class Coaches < Grape::API
		resource :Coaches do
			post :search do
				byebug
				Coach.all
			end
		end
	end
end