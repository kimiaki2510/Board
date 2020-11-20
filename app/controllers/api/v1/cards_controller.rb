class Api::V1::CardsController < ApplicationController
  def create
    table = Table.find(params[:table_id])
    card = table.cards.build(card_params)
    if card.save
      render json: { status: 201, data: card }
    else
      render json: { status: 422, data: card }
    end
  end

  def destroy
    card = Card.find(params[:id])
    card.destroy
    render json: { data: card }
  end

  private

  def card_params
    params.require(:card).permit(:title)
  end
end
