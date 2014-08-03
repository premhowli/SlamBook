class StatusesController < ApplicationController
layout "slambook_logged"
def index
@datapro=User.all
@data=Status.all
@status = Status.new

end
def new 
@status = Status.new
end
def create
    @status = Status.create(status_params)
    @status.user_id= current_user.id
    @status.save
    
    redirect_to action: :index, notice: 'Record saved'
  end 
def profile
@datapro=User.find(params[:id])
end
def status_params
    params.require(:status).permit(:post, :user_id)
  end
end

