class TagsController < ApplicationController
  def index
    tags = Tag.all
    render json: {status: 'SUCCESS', message: 'Loaded all tags', data: tags}, status: :ok
  end

  def show
    tag = Tag.find(params[:id])
    render json: tag, status: :ok
  end

  def create
    @tag = Tag.new(tag_params)

    if @tag.save
      render json: @tag, status: :created, location: @tag
    else
      render json: @tag.errors, status: :unprocessable_entity
    end
  end

  def update
    if @tag.update(tag_params)
      render json: @tag
    else
      render json: @tag.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @tag.destroy
  end

  private

  def tag_params
    params.require(:tag).permit(:name)
  end
end
