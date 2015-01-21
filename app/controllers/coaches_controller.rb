class CoachesController < ApplicationController
  before_action :set_coach, only: [:show, :edit, :update, :destroy, :create_review]

  respond_to :html

  def index
    if @selected_sport.nil?
      @coaches = Coach.recently_reviewed
    else
      @coaches = Coach.recently_reviewed.where(sport: @selected_sport)
    end
    respond_with(@coaches)
  end

  def show
    respond_with(@coach)
  end

  def new
    @coach = Coach.new
    respond_with(@coach)
  end

  def edit
  end

  def create
    @coach = Coach.new(coach_params)
    @coach.save
    respond_with(@coach)
  end

  def update
    @coach.update(coach_params)
    respond_with(@coach)
  end

  def destroy
    @coach.destroy
    respond_with(@coach)
  end

  def search
    @coaches = Coach.all
    redirect_to :coaches
  end

  def create_review
  end

  private
    def set_coach
      @coach = Coach.find(params[:id])
    end

    def coach_params
      params.require(:coach).permit(:first_name, :last_name, :img_ref, :started, :gender, :school_id, :sport_id)
    end
end
