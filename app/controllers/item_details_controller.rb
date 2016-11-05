class ItemDetailsController < ApplicationController
  before_action :set_item_detail, only: [:show, :update, :destroy]

  # GET /item_details
  # GET /item_details.json
  def index
    @item_details = ItemDetail.all

    render json: @item_details
  end

  # GET /item_details/1
  # GET /item_details/1.json
  def show
    render json: @item_detail
  end

  # POST /item_details
  # POST /item_details.json
  def create
    @item_detail = ItemDetail.new(item_detail_params)

    if @item_detail.save
      render json: @item_detail, status: :created, location: @item_detail
    else
      render json: @item_detail.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /item_details/1
  # PATCH/PUT /item_details/1.json
  def update
    @item_detail = ItemDetail.find(params[:id])

    if @item_detail.update(item_detail_params)
      head :no_content
    else
      render json: @item_detail.errors, status: :unprocessable_entity
    end
  end

  # DELETE /item_details/1
  # DELETE /item_details/1.json
  def destroy
    @item_detail.destroy

    head :no_content
  end

  private

    def set_item_detail
      @item_detail = ItemDetail.find(params[:id])
    end

    def item_detail_params
      params.require(:item_detail).permit(:item_id)
    end
end
