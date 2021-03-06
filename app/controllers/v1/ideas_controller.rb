class V1::IdeasController < ApplicationController
  def index
    @ideas = if params[:category_name]

               Category.joins(:ideas).select('ideas.id, name AS category, body').where(name: params[:category_name])
             else
               Category.joins(:ideas).select('ideas.id, name AS category, body')
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
