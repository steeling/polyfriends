module Polyfriends
	class Coaches < Grape::API
		resource :Coaches do
			post :search do
				Coach.all
			end
		end
	end
end