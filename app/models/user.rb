class User < ActiveRecord::Base
  
has_many :statuses 
# Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
#attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :username, :sex
#params.require(:user).permit(:email, :password, :password_confirmation, :remember_me, :name, :username, :sex)

def self.search(search, id)
if search
where(['name LIKE ?', "%#{search}%"])
else

end
end
end
