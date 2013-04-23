class TestbbsController < ApplicationController
  # GET /testbbs
  # GET /testbbs.json
  def index
    @testbbs = Testbb.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @testbbs }
    end
  end

  # GET /testbbs/1
  # GET /testbbs/1.json
  def show
    @testbb = Testbb.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @testbb }
    end
  end

  # GET /testbbs/new
  # GET /testbbs/new.json
  def new
    @testbb = Testbb.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @testbb }
    end
  end

  # GET /testbbs/1/edit
  def edit
    @testbb = Testbb.find(params[:id])
  end

  # POST /testbbs
  # POST /testbbs.json
  def create
    @testbb = Testbb.new(params[:testbb])

    respond_to do |format|
      if @testbb.save
        format.html { redirect_to @testbb, notice: 'Testbb was successfully created.' }
        format.json { render json: @testbb, status: :created, location: @testbb }
      else
        format.html { render action: "new" }
        format.json { render json: @testbb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /testbbs/1
  # PUT /testbbs/1.json
  def update
    @testbb = Testbb.find(params[:id])

    respond_to do |format|
      if @testbb.update_attributes(params[:testbb])
        format.html { redirect_to @testbb, notice: 'Testbb was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @testbb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testbbs/1
  # DELETE /testbbs/1.json
  def destroy
    @testbb = Testbb.find(params[:id])
    @testbb.destroy

    respond_to do |format|
      format.html { redirect_to testbbs_url }
      format.json { head :no_content }
    end
  end
end
