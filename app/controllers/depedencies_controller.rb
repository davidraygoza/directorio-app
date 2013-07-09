class DepedenciesController < ApplicationController
  # GET /depedencies
  # GET /depedencies.json
  def index
    @depedencies = Depedency.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @depedencies }
    end
  end

  # GET /depedencies/1
  # GET /depedencies/1.json
  def show
    @depedency = Depedency.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @depedency }
    end
  end

  # GET /depedencies/new
  # GET /depedencies/new.json
  def new
    @depedency = Depedency.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @depedency }
    end
  end

  # GET /depedencies/1/edit
  def edit
    @depedency = Depedency.find(params[:id])
  end

  # POST /depedencies
  # POST /depedencies.json
  def create
    @depedency = Depedency.new(params[:depedency])

    respond_to do |format|
      if @depedency.save
        format.html { redirect_to @depedency, notice: 'Depedency was successfully created.' }
        format.json { render json: @depedency, status: :created, location: @depedency }
      else
        format.html { render action: "new" }
        format.json { render json: @depedency.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /depedencies/1
  # PUT /depedencies/1.json
  def update
    @depedency = Depedency.find(params[:id])

    respond_to do |format|
      if @depedency.update_attributes(params[:depedency])
        format.html { redirect_to @depedency, notice: 'Depedency was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @depedency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /depedencies/1
  # DELETE /depedencies/1.json
  def destroy
    @depedency = Depedency.find(params[:id])
    @depedency.destroy

    respond_to do |format|
      format.html { redirect_to depedencies_url }
      format.json { head :no_content }
    end
  end
end
