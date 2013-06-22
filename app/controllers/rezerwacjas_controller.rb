class RezerwacjasController < ApplicationController
  # GET /rezerwacjas
  # GET /rezerwacjas.json
authorize_resource
  before_filter :authenticate_user!
  def index
    @rezerwacjas = Rezerwacja.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rezerwacjas }
    end
  end

  # GET /rezerwacjas/1
  # GET /rezerwacjas/1.json
  def show
    @rezerwacja = Rezerwacja.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rezerwacja }
    end
  end

  # GET /rezerwacjas/new
  # GET /rezerwacjas/new.json
  def new
    @rezerwacja = Rezerwacja.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rezerwacja }
    end
  end

  def new_const
     @rezerwacja = Rezerwacja.new

    # respond_to do |format|
    #   format.html # new.html.erb
    #   format.json { render json: @rezerwacja }
    # end
  end 
  def new_person
     @rezerwacja = Rezerwacja.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rezerwacja }
    end
  end

  # GET /rezerwacjas/1/edit
  def edit
    @rezerwacja = Rezerwacja.find(params[:id])
  end

  # POST /rezerwacjas
  # POST /rezerwacjas.json
  def create
    @rezerwacja = Rezerwacja.new(params[:rezerwacja])

    respond_to do |format|
      if @rezerwacja.save
        format.html { redirect_to @rezerwacja, notice: 'Rezerwacja was successfully created.' }
        format.json {  render json: @rezerwacja, status: :created, location: @rezerwacja }
      else
        # @test = "warning"
        format.html { render action: "new"}
        format.json { render json: @rezerwacja.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rezerwacjas/1
  # PUT /rezerwacjas/1.json
  def update
    @rezerwacja = Rezerwacja.find(params[:id])

    respond_to do |format|
      if @rezerwacja.update_attributes(params[:rezerwacja])
        format.html { redirect_to @rezerwacja, notice: 'Rezerwacja was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rezerwacja.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rezerwacjas/1
  # DELETE /rezerwacjas/1.json
  def destroy
    @rezerwacja = Rezerwacja.find(params[:id])
    @rezerwacja.destroy

    respond_to do |format|
      format.html { redirect_to rezerwacjas_index_url }
      format.json { head :no_content }
    end
  end
end
