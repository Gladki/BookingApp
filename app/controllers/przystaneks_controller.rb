class PrzystaneksController < ApplicationController
  # GET /przystaneks
  # GET /przystaneks.json
authorize_resource
  before_filter :authenticate_user!
  def index
    @przystaneks = Przystanek.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @przystaneks }
    end
  end

  # GET /przystaneks/1
  # GET /przystaneks/1.json
  def show
    @przystanek = Przystanek.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @przystanek }
    end
  end

  # GET /przystaneks/new
  # GET /przystaneks/new.json
  def new
    @przystanek = Przystanek.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @przystanek }
    end
  end

  # GET /przystaneks/1/edit
  def edit
    @przystanek = Przystanek.find(params[:id])
  end

  # POST /przystaneks
  # POST /przystaneks.json
  def create
    @przystanek = Przystanek.new(params[:przystanek])

    respond_to do |format|
      if @przystanek.save
        format.html { redirect_to @przystanek, notice: 'Przystanek was successfully created.' }
        format.json { render json: @przystanek, status: :created, location: @przystanek }
      else
        format.html { render action: "new" }
        format.json { render json: @przystanek.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /przystaneks/1
  # PUT /przystaneks/1.json
  def update
    @przystanek = Przystanek.find(params[:id])

    respond_to do |format|
      if @przystanek.update_attributes(params[:przystanek])
        format.html { redirect_to @przystanek, notice: 'Przystanek was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @przystanek.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /przystaneks/1
  # DELETE /przystaneks/1.json
  def destroy
    @przystanek = Przystanek.find(params[:id])
    @przystanek.destroy

    respond_to do |format|
      format.html { redirect_to przystaneks_index_url }
      format.json { head :no_content }
    end
  end
end
