class ItemsController < ApplicationController

	def index
		@passed_project_id = params[:project_id]
		@project = Project.find(@passed_project_id)
		@items = Item.all
	end

	def new
		@item = Item.new
	end

	def create
		@item = Item.new(params[:item])

		if @item.save
			redirect_to item_url(@item)
		else
			render :new
		end
	end

	def show
		@item = Item.find(params[:id])
	end

	def edit
		@item = Item.find(params[:id])
	end

	def update
		@item = Item.find(params[:id])
    @item.update_attributes(params[:item])

    redirect_to item_url(@item)
	end

end
