class Api::V1::LocationsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User

  before_action :check_user_authorization

  before_action :set_user,     only: [ :index, :show, :create, :update, :destroy ]
  before_action :set_location, only: [ :show, :update, :destroy ]

  def index
    @locations = @user.locations.sort
  end

  def show
  end

  def create
    @location = @user.locations.new(location_params)

    if @location.save
      render :show, status: :created
    else
      render_error
    end
  end

  def update
    if @location.update(location_params)
      render :show
    else
      render_error
    end
  end

  def destroy
    @location.destroy
  end

  private

  def location_params
    params.require(:location).permit(:name, :spot, :latitude, :longitude)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_location
    @location = @user.locations.find(params[:id])
  end

  def render_error
    render json: { errors: @location.errors.full_messages },
           status: :unprocessable_entity
  end
end
