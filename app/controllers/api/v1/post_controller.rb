class Api::V1::PostController < ApiController
  before_action :authenticate_user!
  
  def index
      render json: { status: true }
  end
end