class V1::IdeasController < ApplicationController
  def index
    ideas = Idea.all
    render json: ideas
  end

  def show; end

  def create; end

  def update; end

  def destroy; end
end
