class SchedulesController < ApplicationController
  before_action :set_schedule, only: [:show, :edit, :update, :destroy]

  # GET /schedules
  # GET /schedules.json
  def index
    @schedule = Schedule.last
    @test = "Testing Testing"
    # doesn't have the params
    @event = Event.new
  end

  # GET /schedules/1
  # GET /schedules/1.json
  def show
  end

  # GET /schedules/new
  def new
    @schedule = Schedule.new
  end

  # GET /schedules/1/edit
  def edit
  end



  # POST /schedules
  # POST /schedules.json
  def create
    @schedule = Schedule.new(schedule_params)

    respond_to do |format|
      if @schedule.save
        format.html { redirect_to schedules_url, notice: 'Schedule was successfully created.' }
        format.json { render :show, status: :created, location: @schedule }
      else
        format.html { render :new }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schedules/1
  # PATCH/PUT /schedules/1.json
  def update
    respond_to do |format|
      if @schedule.update(schedule_params)
        format.html { redirect_to root_path notice: 'Schedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @schedule }
      else
        format.html { render :edit }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedules/1
  # DELETE /schedules/1.json
  def destroy
    @schedule.destroy
    respond_to do |format|
      format.html { redirect_to schedules_url, notice: 'Schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  def update_calendar
    # not even close to being complete
    # need to query the events for the appropriate user and correct date

    respond_to do |format|
      format.json {render :json => {success: true, html: render_to_string(:partial => 'schedules/calendar.html')}}
    end

    # puts(params[:test])

    # render :json => { :test => "Now You See Me"}


  end

  def get_events
    @schedule = Schedule.last
    events = @schedule.events
    # events = Event.all
    # events = current_user.events #or write method #WAS Event.all
    event_result = []

    for event in events
      new_entry = {}
      new_entry["start"] = event.start_time
      new_entry["end"] = event.end_time
      new_entry["title"] = event.name
      new_entry['latitude'] = event.latitude
      new_entry['longitude'] = event.longitude
      event_result.append(new_entry)
    end
    render :json => event_result
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schedule_params
      params.require(:schedule).permit(:group_id, :start_date, :end_date, :location, :name)
    end

    def event_params
      params.require(:event).permit(:name, :schedule_id, :start_time, :end_time, :description, :cost, :longitude, :location_name)
    end
end
