class Api::MatchesController < ApplicationController
	def wins
		matches = Match.joins(:winner).includes([:winners])
		render json: matches
	end


end
