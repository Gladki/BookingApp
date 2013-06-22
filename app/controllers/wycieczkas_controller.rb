class WycieczkasController < ApplicationController
  # GET /wycieczkas
  # GET /wycieczkas.json
  authorize_resource
  before_filter :authenticate_user!
  def index
    @wycieczkas = Wycieczka.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wycieczkas }
    end
  end

  def lista 
    @rezerwacjas = Rezerwacja.find(:all, :conditions => {:nazwa => params[:id]})

    respond_to do |format|
      format.html # lista.html.erb
      format.json { render json: @rezerwacjas }
    end
  end
  # GET /wycieczkas/1
  # GET /wycieczkas/1.json
  def show
    @wycieczka = Wycieczka.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wycieczka }
    end
  end

  # GET /wycieczkas/new
  # GET /wycieczkas/new.json
  def new
    @wycieczka = Wycieczka.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wycieczka }
    end
  end

  # GET /wycieczkas/1/edit
  def edit
    @wycieczka = Wycieczka.find(params[:id])
  end

  # POST /wycieczkas
  # POST /wycieczkas.json
  def create
    @wycieczka = Wycieczka.new(params[:wycieczka])

    respond_to do |format|
      if @wycieczka.save
        format.html { redirect_to @wycieczka, notice: 'Wycieczka was successfully created.' }
        format.json { render json: @wycieczka, status: :created, location: @wycieczka }
      else
        format.html { render action: "new" }
        format.json { render json: @wycieczka.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /wycieczkas/1
  # PUT /wycieczkas/1.json
  def update
    @wycieczka = Wycieczka.find(params[:id])

    respond_to do |format|
      if @wycieczka.update_attributes(params[:wycieczka])
        format.html { redirect_to @wycieczka, notice: 'Wycieczka was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wycieczka.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wycieczkas/1
  # DELETE /wycieczkas/1.json
  def destroy
    @wycieczka = Wycieczka.find(params[:id])
    @wycieczka.destroy

    respond_to do |format|
      format.html { redirect_to wycieczkas_index_url }
      format.json { head :no_content }
    end
  end
end
