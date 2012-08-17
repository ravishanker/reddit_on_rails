class PagesController < ApplicationController

	def index
		@links = Link.page(params[:page]).order('created_at DESC')
	end
end
