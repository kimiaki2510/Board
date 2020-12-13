class Api::V1::CardsController < ApplicationController
  def create
    table = Table.find(params[:table_id])
    card = table.cards.build(card_params)
    if card.save
      render json: { status: 200, data: card }
    else
      render json: { status: 422}
    end
  end

  def destroy
    card = Card.find(params[:id])
    card.destroy
    render json: { data: card }
  end

  private

  def card_params
    params.require(:card).permit(:title, :table_id)
  end
end
