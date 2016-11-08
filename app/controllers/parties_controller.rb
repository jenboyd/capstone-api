class PartiesController < ProtectedController
  before_action :set_party, only: [:show, :update, :destroy]

  # GET /parties
  # GET /parties.json
  def index
    # @parties = Party.all
    @parties = current_user.parties

    render json: @parties
  end

  # GET /parties/1
  # GET /parties/1.json
  def show
    render json: @party
  end

  # POST /parties
  # POST /parties.json
  def create
    # @party = Party.new(party_params)
    @party = current_user.parties.build(party_params)

    if @party.save
      render json: @party, status: :created, location: @party
    else
      render json: @party.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /parties/1
  # PATCH/PUT /parties/1.json
  def update
    @party = Party.find(params[:id])

    if @party.update(party_params)
      head :no_content
    else
      render json: @party.errors, status: :unprocessable_entity
    end
  end

  # DELETE /parties/1
  # DELETE /parties/1.json
  def destroy
    @party.destroy

    head :no_content
  end

  private

    def set_party
      # @party = Party.find(params[:id])
      @party = current_user.parties.find(params[:id])
    end

    def party_params
      params.require(:party).permit(:name, :location, :date)
    end
end
