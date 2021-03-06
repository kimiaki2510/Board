class Api::V1::TablesController < ApplicationController
  def index
    tables = Table.all
    render json: { data: tables }
  end

  def show
    table = Table.find(params[:id])
    render json: { data: table }
  end

  def create
    table = Table.new(table_params)
    if table.save
      render json: { status: 201, data: table }
    else
      render json: { status: 422, data: table }
    end
  end

  def destroy
    table = Table.find(params[:id])
    table.destroy
    render json: { data: table }
  end

  private

  def table_params
    params.require(:table).permit(:title)
  end
end
