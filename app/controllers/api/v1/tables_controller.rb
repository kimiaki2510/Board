class Api::V1::TablesController < ApplicationController
  def index
    records = current_user.records.all
    render json: { data: records }
  end

  def show
    record = current_user.records.find(params[:id])
    render json: { data: record }
  end

  def create
    record = Record.new(record_params)
    if record.save
      render json: { status: 201, data: record }
    else
      render json: { status: 422, data: record }
    end
  end

  def destroy
    record = Record.find(params[:id])
    record.destroy
    render json: { data: record }
  end

  private

  def record_params
    params.require(:table).permit(:title)
  end
end
