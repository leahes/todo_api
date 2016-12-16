class Api::ListsController < ApiController
  before_action :authenticated?

  def index
    lists = current_user.lists
    render json: lists, each_serializer: ListSerializer
  end

  def create
    list = current_user.lists.build(list_params)
    if list.save
      render json: list
    else
      render json: { errors: list.errors.full_messages },
      status: :unprocessable_entity
    end
  end

  def list_params
    params.require(:list).permit(:title, :permissions)
  end
end
