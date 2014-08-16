class User < ActiveRecord::Base
  
has_many :statuses 
# Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
#attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :username, :sex
#params.require(:user).permit(:email, :password, :password_confirmation, :remember_me, :name, :username, :sex)
include Tire::Model::Search
  include Tire::Model::Callbacks


def self.search(params)
  tire.search(load: true) do
    query { string params[:search]} if params[:search].present?
  end
end


end
