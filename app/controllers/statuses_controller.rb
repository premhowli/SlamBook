class StatusesController < ApplicationController
layout "slambook_logged"
def index
 if params[:search].present?
    @usersd = User.search(params)
  else
    
  end
@datad=Status.all
@statusd = Status.new

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
def demo
 if params[:search].present?
    @users = User.search(params)
  else
    
  end
@data=Status.all
@status = Status.new
end
def profile
@datap=User.find(params[:id])
end
def status_params
    params.require(:status).permit(:post, :user_id)
  end
end

