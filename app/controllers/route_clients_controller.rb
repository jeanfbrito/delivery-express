class RouteClientsController < ApplicationController
  before_action :set_route_client, only: [:show, :edit, :update, :destroy]

  # GET /route_clients
  # GET /route_clients.json
  def index
    @route_clients = RouteClient.all
  end

  # GET /route_clients/1
  # GET /route_clients/1.json
  def show
  end

  # GET /route_clients/new
  def new
    @route_client = RouteClient.new
  end

  # GET /route_clients/1/edit
  def edit
  end

  # POST /route_clients
  # POST /route_clients.json
  def create
    @route_client = RouteClient.new(route_client_params)

    respond_to do |format|
      if @route_client.save
        format.html { redirect_to @route_client, notice: 'Route client was successfully created.' }
        format.json { render :show, status: :created, location: @route_client }
      else
        format.html { render :new }
        format.json { render json: @route_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /route_clients/1
  # PATCH/PUT /route_clients/1.json
  def update
    respond_to do |format|
      if @route_client.update(route_client_params)
        format.html { redirect_to @route_client, notice: 'Route client was successfully updated.' }
        format.json { render :show, status: :ok, location: @route_client }
      else
        format.html { render :edit }
        format.json { render json: @route_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /route_clients/1
  # DELETE /route_clients/1.json
  def destroy
    @route_client.destroy
    respond_to do |format|
      format.html { redirect_to route_clients_url, notice: 'Route client was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_route_client
      @route_client = RouteClient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def route_client_params
      params.require(:route_client).permit(:route_id, :client_id)
    end
end
