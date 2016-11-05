class ItemInstancesController < ApplicationController
  before_action :set_item_instance, only: [:show, :update, :destroy]

  # GET /item_instances
  # GET /item_instances.json
  def index
    @item_instances = ItemInstance.all

    render json: @item_instances
  end

  # GET /item_instances/1
  # GET /item_instances/1.json
  def show
    render json: @item_instance
  end

  # POST /item_instances
  # POST /item_instances.json
  def create
    @item_instance = ItemInstance.new(item_instance_params)

    if @item_instance.save
      render json: @item_instance, status: :created, location: @item_instance
    else
      render json: @item_instance.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /item_instances/1
  # PATCH/PUT /item_instances/1.json
  def update
    @item_instance = ItemInstance.find(params[:id])

    if @item_instance.update(item_instance_params)
      head :no_content
    else
      render json: @item_instance.errors, status: :unprocessable_entity
    end
  end

  # DELETE /item_instances/1
  # DELETE /item_instances/1.json
  def destroy
    @item_instance.destroy

    head :no_content
  end

  private

    def set_item_instance
      @item_instance = ItemInstance.find(params[:id])
    end

    def item_instance_params
      params.require(:item_instance).permit(:list_id, :item_id)
    end
end
