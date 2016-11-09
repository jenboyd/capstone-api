class ListsController < ProtectedController
  before_action :set_list, only: [:show, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    @lists = current_user.lists
    # @lists = List.all

    render json: @lists
  end

  # GET /items/1
  # GET /items/1.json
  def show
    render json: @list
  end

  # POST /lists
  # POST /lists.json
  def create
    @party = current_user.parties.find(list_params[:party_id])
    # handle missing party somehow?
    @list = @party.lists.build(list_params)

    if @list.save
      render json: @list, status: :created, location: @list
    else
      render json: @list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lists/1
  # PATCH/PUT /lists/1.json
  def update
    @list = List.find(params[:id])

    if @list.update(list_params)
      head :no_content
    else
      render json: @list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lists/1
  # DELETE /lists/1.json
  def destroy
    @list.destroy

    head :no_content
  end

  private

    def set_list
      # @list = List.find(params[:id])
      @list = current_user.lists.find(params[:id])
    end

    def list_params
      params.require(:list).permit(:name, :party_id)
    end
end
