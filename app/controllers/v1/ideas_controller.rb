class V1::IdeasController < ApplicationController
  def index
    if params[:category_id]
      @category = Category.find(params[:category_id])

      @ideas = @category.ideas.order(created_at: :desc).all
    else
      @ideas = Idea.order(created_at: :desc).all
    end
    
    render json: { data: @ideas }
  end

  def create
    @idea = Idea.new(idea_params)

    if @idea.save
      render json: @idea, status: :created, location: @idea
    else
      render json: @idea.errors, status: :unprocessable_entity
    end
  end

  private

  def idea_params
    params.require(:idea).permit(:catagory_id, :body)
  end
end
