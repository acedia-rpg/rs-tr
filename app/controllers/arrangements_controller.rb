class ArrangementsController < ApplicationController
  # GET /arrangements
  # GET /arrangements.json
  def index
    @arrangements = Arrangement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @arrangements }
    end
  end

  # GET /arrangements/1
  # GET /arrangements/1.json
  def show
    @arrangement = Arrangement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @arrangement }
    end
  end

  # GET /arrangements/new
  # GET /arrangements/new.json
  def new
    @arrangement = Arrangement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @arrangement }
    end
  end

  # GET /arrangements/1/edit
  def edit
    @arrangement = Arrangement.find(params[:id])
  end

  # POST /arrangements
  # POST /arrangements.json
  def create
    @arrangement = Arrangement.new(params[:arrangement])

    respond_to do |format|
      if @arrangement.save
        format.html { redirect_to @arrangement, notice: 'Arrangement was successfully created.' }
        format.json { render json: @arrangement, status: :created, location: @arrangement }
      else
        format.html { render action: "new" }
        format.json { render json: @arrangement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /arrangements/1
  # PUT /arrangements/1.json
  def update
    @arrangement = Arrangement.find(params[:id])

    respond_to do |format|
      if @arrangement.update_attributes(params[:arrangement])
        format.html { redirect_to @arrangement, notice: 'Arrangement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @arrangement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arrangements/1
  # DELETE /arrangements/1.json
  def destroy
    @arrangement = Arrangement.find(params[:id])
    @arrangement.destroy

    respond_to do |format|
      format.html { redirect_to arrangements_url }
      format.json { head :no_content }
    end
  end
end
