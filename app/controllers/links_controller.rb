class LinksController < ApplicationController
	
	respond_to :html, :xml, :json
	
	def show
		@link = Link.find(params[:id])
		@comment = Comment.new
	end

	def new
		@link = Link.new
	end

	def create
		@link = Link.new(params[:link])

		if @link.save
			flash[:notice] = "Successfully created link." 
			redirect_to link_path(@link)
		else
			render :new
		end

	end


end