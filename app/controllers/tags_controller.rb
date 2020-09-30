class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to tags_path
  end

  def show
    @tag = Tag.find(params[:id])
  end
end
