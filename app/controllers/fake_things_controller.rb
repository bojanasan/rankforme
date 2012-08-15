class FakeThingsController < ApplicationController
  # GET /fake_things
  # GET /fake_things.json
  def index
    @fake_things = FakeThing.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fake_things }
    end
  end

  # GET /fake_things/1
  # GET /fake_things/1.json
  def show
    @fake_thing = FakeThing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fake_thing }
    end
  end

  # GET /fake_things/new
  # GET /fake_things/new.json
  def new
    @fake_thing = FakeThing.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fake_thing }
    end
  end

  # GET /fake_things/1/edit
  def edit
    @fake_thing = FakeThing.find(params[:id])
  end

  # POST /fake_things
  # POST /fake_things.json
  def create
    @fake_thing = FakeThing.new(params[:fake_thing])

    respond_to do |format|
      if @fake_thing.save
        format.html { redirect_to @fake_thing, notice: 'Fake thing was successfully created.' }
        format.json { render json: @fake_thing, status: :created, location: @fake_thing }
      else
        format.html { render action: "new" }
        format.json { render json: @fake_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fake_things/1
  # PUT /fake_things/1.json
  def update
    @fake_thing = FakeThing.find(params[:id])

    respond_to do |format|
      if @fake_thing.update_attributes(params[:fake_thing])
        format.html { redirect_to @fake_thing, notice: 'Fake thing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fake_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fake_things/1
  # DELETE /fake_things/1.json
  def destroy
    @fake_thing = FakeThing.find(params[:id])
    @fake_thing.destroy

    respond_to do |format|
      format.html { redirect_to fake_things_url }
      format.json { head :no_content }
    end
  end
end
