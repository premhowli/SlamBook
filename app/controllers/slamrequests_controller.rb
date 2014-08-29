class SlamrequestsController < ApplicationController
layout "slambook_logged"
def index
@slamnew=Slamrequest.new
end
def new
@slamreq = Slamrequest.new
end
def create
@slamreq = Slamrequest.create(slam_params)
@slamreq.from_user_id=current_user.id
@slamreq.to_user_id=params[:id]
if @slamreq.save
flash[:success] = "Thanks! I'll be in touch soon!"
  redirect_to url_for(:controller => :statuses, :action => :index)
else
    redirect_to action: :index, notice: 'Record saved'
end
end
def slam_params
    params.require(:slamrequest).permit(:request_type, :from_user_id, :to_user_id, :request_permission)
  end
end
