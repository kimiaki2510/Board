class Api::V1::ListsController < ApplicationController
  def create
    table = Table.find(params[:table_id])
    list = table.lists.build(list_params)
    if list.save
      render json: { status: 201, data: list }
    else
      render json: { status: 422, data: list }
    end
  end

  def destroy
    card = Card.find(params[:id])
    card.destroy
    render json: { data: list }
  end

  private

  def list_params
    params.require(:list).permit(:title)
  end
end
