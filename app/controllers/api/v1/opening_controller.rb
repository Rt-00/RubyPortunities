# frozen_string_literal: true

class Api::V1::OpeningController < ApplicationController
  def index
    @openings = Opening.all
    render json: { openings: @openings }, status: :ok
  end

  def show
    @opening = Opening.find_by(id: params[:id])
    if @opening
      render json: { opening: @opening }, status: :ok
    else
      render json: { error: "Not found opening with this id: #{params[:id]}" }, status: :not_found
    end
  end

  def create
    @opening = Opening.new(opening_params)
    if @opening.save
      render json: { message: 'Opening created successfully', opening: @opening }, status: :created
    else
      render json: { error: @opening.errors }, status: :unprocessable_entity
    end
  end

  def update
    @opening = Opening.find_by(id: params[:id])
    if @opening
      if @opening.update
        render json: { message: 'Opening update successfully', opening: @opening }, status: :ok
      else
        render json: { message: "Failed to update opening with id: #{params[:id]}" }, status: :unprocessable_entity
      end
    else
      render json: { error: "Not found opening with this id: #{params[:id]}" }, status: :not_found
    end
  end

  def destroy
    @opening = Opening.find_by(id: params[:id])
    if @opening
      if @opening.destroy
        render json: { message: 'Opening destroyed successfully' }, status: :ok
      else
        render json: { message: "Failed to destroy opening with id: #{params[:id]}" }, status: :unprocessable_entity
      end
    else
      render json: { error: "Not found opening with this id: #{params[:id]}" }, status: :not_found
    end
  end

  def destroy
    @opening = Opening.find_by(id: params[:id])
    if @opening
      if @opening.destroy
        render json: { message: 'Opening destroyed successfully' }, status: :ok
      else
        render json: { message: "Failed to destroy opening with id: #{params[:id]}" }, status: :ok
      end
    else
      render json: { error: "Not found opening with this id: #{params[:id]}" }, status: :not_found
    end
  end

  private

  def opening_params
    params.require(:opening).permit(:role, :company, :location, :remote, :link, :salary)
  end
end
