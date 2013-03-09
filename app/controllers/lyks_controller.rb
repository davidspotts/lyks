class LyksController < ApplicationController

  before_filter :authenticate_user!, except: [:index]
  # GET /lyks
  # GET /lyks.json
  def index
    @lyks = Lyk.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lyks }
    end
  end

  # GET /lyks/1
  # GET /lyks/1.json
  def show
    @lyk = Lyk.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lyk }
    end
  end

  # GET /lyks/new
  # GET /lyks/new.json
  def new
    @lyk = current_user.lyks.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lyk }
    end
  end

  # GET /lyks/1/edit
  def edit
    @lyk = current_user.lyks.find(params[:id])
  end

  # POST /lyks
  # POST /lyks.json
  def create
    @lyk = current_user.lyks.new(params[:lyk])

    respond_to do |format|
      if @lyk.save
        format.html { redirect_to @lyk, notice: 'Lyk was successfully created.' }
        format.json { render json: @lyk, status: :created, location: @lyk }
      else
        format.html { render action: "new" }
        format.json { render json: @lyk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lyks/1
  # PUT /lyks/1.json
  def update
    @lyk = current_user.lyks.find(params[:id])

    respond_to do |format|
      if @lyk.update_attributes(params[:lyk])
        format.html { redirect_to @lyk, notice: 'Lyk was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lyk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lyks/1
  # DELETE /lyks/1.json
  def destroy
    @lyk = current_user.lyks.find(params[:id])
    @lyk.destroy

    respond_to do |format|
      format.html { redirect_to lyks_url }
      format.json { head :no_content }
    end
  end
end
